{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snippet-extractor"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Extracts labeled snippets of code to files.";
      description = "Snippet-extractor looks for snippets in files and\nplaces those snippets in their own files.\n\nA snippet is defined as consecutive lines in a\nfile delimited by \\\"\\@snippet-start \\<filename\\>\\\" and\n\\\"\\@snippet-end\\\", the extracted snippet is placed in\nthe provided filename.  If the desired filename\ncontains spaces, put the filename in quotes.\n\nEverything on the line with the start and end\nmarkers is discarded.  Snippet-extractor should\nbe agnostic to the syntax of the file you are\nextracting from.\n\nHere is an example:\n\n>  /* @snippet-start snippet1.c */\n>  for(i = 0; i < 100; i++){\n>    printf(\"%d\\n\",i);\n>  }\n>  /* @snippet-end */\n\nThe above snippet would be extracted and placed in\nsnippet1.c\n\nSnippet-extractor is intended for use in\ndocumentation.  For example, the snippets could\nbe extracted from working code and then included\nin a text about the code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snippet-extractor" = { depends = [ (hsPkgs.base) (hsPkgs.parsec) ]; };
        };
      };
    }