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
      identifier = { name = "derive-storable"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kloczko";
      homepage = "https://www.github.com/mkloczko/derive-storable-plugin/";
      url = "";
      synopsis = "Derive Storable instances with help of GHC.Generics.           ";
      description = "The package allows for automatic derivation of Storable instances\nwith C-like memory layout.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "c_alignment" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."generic-storable" or (errorHandler.buildDepError "generic-storable"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-storable" or (errorHandler.buildDepError "generic-storable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }