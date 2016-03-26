all: gen

CV: content/media/pdfs/cv.pdf

content/media/pdfs/cv.pdf: CV/cv.tex
	cd CV; make all
	mkdir -p content/media/pdfs/
	cp CV/cv.pdf content/media/pdfs/

racelist:
	cp content/racelist.html deploy_production/
    
gen: CV racelist
	hyde gen

serve: clean gen
	hyde serve

clean:
	rm -rf deploy

gen-production: clean
	hyde gen -c production.yaml

publish: CV racelist gen-production	
	rsync -e ssh -r deploy_production/ willett@lucifer11.spa.umn.edu:public_html/
