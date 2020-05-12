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
      specVersion = "1.8";
      identifier = { name = "gstorable"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka, 2018, Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "Generic implementation of Storable";
      description = "Forked version of the @generic-storable@ package with updated bounds and improved ergonomics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "generic-storable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."generic-storable" or (errorHandler.buildDepError "generic-storable"))
            ];
          buildable = true;
          };
        };
      };
    }