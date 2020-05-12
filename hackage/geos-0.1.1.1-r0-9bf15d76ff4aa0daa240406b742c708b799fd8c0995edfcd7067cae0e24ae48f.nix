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
    flags = { debug = false; };
    package = {
      specVersion = "1.18.0";
      identifier = { name = "geos"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "pfrance@gmail.com";
      author = "Peter France";
      homepage = "";
      url = "";
      synopsis = "Bindings for GEOS.";
      description = "This is a Haskell binding to Geos, the open-source geometry library, which includes geometry types, predicate functions and other operations, spatially indexed geometries, and parsers for WKB and WKT formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [ (pkgs."geos_c" or (errorHandler.sysDepError "geos_c")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."geos" or (errorHandler.buildDepError "geos"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            ];
          libs = [ (pkgs."geos_c" or (errorHandler.sysDepError "geos_c")) ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
            ];
          buildable = true;
          };
        };
      };
    }