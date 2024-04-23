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
      identifier = { name = "ecma262"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "fabian.bergmark@gmail.com";
      author = "Fabian Bergmark";
      homepage = "https://github.com/fabianbergmark/ECMA-262";
      url = "";
      synopsis = "A ECMA-262 interpreter library";
      description = "A library for iterpreting ECMA-262 code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "ecma262" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ecma262" or (errorHandler.buildDepError "ecma262"))
          ];
          buildable = true;
        };
      };
    };
  }