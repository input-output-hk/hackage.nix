{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "svgsym"; version = "0.1.2.0"; };
      license = "GPL-3.0-or-later";
      copyright = "© 2022–2024 Robert Helgesson";
      maintainer = "robert@rycee.net";
      author = "Robert Helgesson";
      homepage = "https://git.sr.ht/~rycee/svgsym";
      url = "";
      synopsis = "A tool to prune unused symbols from icon SVG files.";
      description = "This is a simple tool to prune unused symbols from icon SVG files.\nSpecifically, this tools takes as input\n- an SVG file that consists only of `symbol` elements,\n- one of more glob patterns of source files, and\n- a regular expression that identifies symbol references.\nIt then scans your source files for references to symbols in the SVG\nfile. The output of the tool is an SVG file that contains only the\nsymbols referenced in your source files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "svgsym" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
          buildable = true;
        };
      };
    };
  }