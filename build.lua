#!/usr/bin/env texlua

-- Build script for "beamer" files

-- Identify the bundle and module
bundle = ""
module = "beamer"

-- Non-standard structure
docfiledir    = "./doc"
sourcefiledir = "./base"

-- Install all files from the source tree directly
installfiles = {"**/*"}
sourcefiles  = installfiles
unpackfiles  = { }

-- Typeset only the main documentation file,
-- but make all sources available
docfiles     = {"*.tex", "**/*.txt"}
typesetfiles = {"beameruserguide.tex"}

-- Only copy Markdown files to main dir
textfiles = {"*.md"}

-- Custom clean-up settings
cleanfiles = {"beameruserguide.pdf", "*.zip"}

-- Release a TDS-style zip
packtdszip = true

-- Find and run the build system
kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
