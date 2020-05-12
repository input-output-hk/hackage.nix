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
    flags = { sumtypes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "derive-storable"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kloczko";
      homepage = "https://www.github.com/mkloczko/derive-storable/";
      url = "";
      synopsis = "Derive Storable instances with GHC.Generics.           ";
      description = "Derive Storable instances with GHC.Generics. The derived Storable instances have the same alignment as C structs.";
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
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            ];
          buildable = true;
          };
        };
      };
    }