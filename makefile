html: index.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o index.html index.md

pdf: index.html
	pandoc -o index.pdf index.md

txt: index.md
	pandoc --standalone --smart --from markdown --to plain -o index.txt index.md

clean:
	rm -f index.html index.pdf index.txt

all: clean html pdf txt

.PHONY: all
