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
      specVersion = "1.6";
      identifier = { name = "anansi"; version = "0.4.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/anansi/";
      url = "";
      synopsis = "Simple literate programming preprocessor";
      description = "Anansi is a preprocessor for literate programs, in the model of NoWeb or\nnuweb. Literate programming allows computer code and a human-readable\ndocument to be generated from the same source. Compared to NoWeb,\nAnansi&#x2019;s primary benefits are the ability to include separate files,\nand to automatically generate an entire directory tree from a project\nwithout having to enumerate each output.\n\nThis package is split into a library and an executable. The executable is\nsuitable for simple cases, such as generating basic HTML or LaTeX. The\nlibrary is useful for users who would like to write their own output formats\n(called &#x201C;looms&#x201D;).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."system-argv0" or (errorHandler.buildDepError "system-argv0"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "anansi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."system-argv0" or (errorHandler.buildDepError "system-argv0"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }