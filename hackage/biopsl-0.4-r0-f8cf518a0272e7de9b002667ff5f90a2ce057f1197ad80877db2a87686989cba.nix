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
      identifier = { name = "biopsl"; version = "0.4"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@malde.org";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/";
      url = "";
      synopsis = "Library and executables for working with PSL files";
      description = "The library contains the functionality for reading and writing\nPSL files (alignment data, e.g. from BLAT output). It duplicates\ncode from (and is incompatible with) the \"bio\" library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "pslstats" = {
          depends = [
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "psluniq" = { buildable = true; };
        "pslfilter" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        "pslcov" = { buildable = true; };
        };
      };
    }