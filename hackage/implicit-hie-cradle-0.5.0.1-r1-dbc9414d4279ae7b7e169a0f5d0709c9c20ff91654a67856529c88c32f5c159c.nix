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
      specVersion = "3.0";
      identifier = { name = "implicit-hie-cradle"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023";
      maintainer = "avi.the.coder@gmail.com";
      author = "Avi Dessauer";
      homepage = "https://github.com/Avi-D-coder/implicit-hie-cradle#readme";
      url = "";
      synopsis = "Auto generate hie-bios cradles";
      description = "Auto generate a stack or cabal multi component cradles";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
          (hsPkgs."implicit-hie" or (errorHandler.buildDepError "implicit-hie"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "implicit-hie-cradle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."implicit-hie-cradle" or (errorHandler.buildDepError "implicit-hie-cradle"))
          ];
          buildable = true;
        };
      };
    };
  }