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
    flags = { dumpexample = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "impl"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Sodality";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/exordium/impl#readme";
      url = "";
      synopsis = "Framework for defaulting superclasses";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."named" or (errorHandler.buildDepError "named"))
        ];
        buildable = true;
      };
      sublibs = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."impl" or (errorHandler.buildDepError "impl"))
          ];
          buildable = true;
        };
      };
    };
  }