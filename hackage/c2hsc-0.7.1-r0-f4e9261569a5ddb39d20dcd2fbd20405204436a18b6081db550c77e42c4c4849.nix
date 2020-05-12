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
      specVersion = "1.10";
      identifier = { name = "c2hsc"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/c2hsc";
      url = "";
      synopsis = "Convert C API header files to .hsc and .hsc.helper.c files";
      description = "Convert C API header files to .hsc and .hsc.helper.c files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "c2hsc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c2hsc" or (errorHandler.buildDepError "c2hsc"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
            (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c2hsc" or (errorHandler.buildDepError "c2hsc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."here" or (errorHandler.buildDepError "here"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }