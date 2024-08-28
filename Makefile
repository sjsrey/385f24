# Makefile for Quarto Project

# The default action when running 'make'
all: preview

# Preview the Quarto project on port 4040
preview:
	quarto preview --port 4040

# Render the Quarto project
render:
	quarto render

# Clean the project (remove generated files)
clean:
	rm -rf _site

# Publish the Quarto project (example, adapt as needed)
publish: render
	rsync -avz _site/ your-server.com:/path/to/your/site

.PHONY: all preview render clean publish
