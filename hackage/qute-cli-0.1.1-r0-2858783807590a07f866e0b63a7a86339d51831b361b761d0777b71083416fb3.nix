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
      specVersion = "3.4";
      identifier = { name = "qute-cli"; version = "0.1.1"; };
      license = "GPL-3.0-only AND MIT";
      copyright = "";
      maintainer = "soeren+hackage@soeren-tempel.net";
      author = "Sören Tempel";
      homepage = "https://git.8pit.net/qute";
      url = "";
      synopsis = "Command-line interface for the Qute software analysis framework.";
      description = "This package provides a command-line interface for the software analysis framework\n[Qute](https://hackage.haskell.org/package/qute). Specifically, it includes a concrete\nsimulator for the [QBE intermediate language](https://c9x.me/compile/) targeted by Qute\nand a [symbolic executor](https://en.wikipedia.org/wiki/Symbolic_execution) based on\nQute's [symbolic semantics](https://hackage.haskell.org/package/qute-symex). Further,\nit provides a library with utility modules needed for this purpose. This, for example,\nincludes an implementation of the [KTest format](https://notes.8pit.net/notes/c8o8.html).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
          (hsPkgs."qute-symex" or (errorHandler.buildDepError "qute-symex"))
          (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
        ];
        buildable = true;
      };
      exes = {
        "qute" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
            (hsPkgs."qute-cli" or (errorHandler.buildDepError "qute-cli"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
        "qute-symex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
            (hsPkgs."qute-cli" or (errorHandler.buildDepError "qute-cli"))
            (hsPkgs."qute-symex" or (errorHandler.buildDepError "qute-symex"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "qute-cli-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."qute-cli" or (errorHandler.buildDepError "qute-cli"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }