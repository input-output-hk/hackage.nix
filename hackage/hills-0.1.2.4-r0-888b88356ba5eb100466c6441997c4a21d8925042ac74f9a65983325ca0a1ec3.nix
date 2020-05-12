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
      identifier = { name = "hills"; version = "0.1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, 2015 David Fletcher";
      maintainer = "david@bubblycloud.com";
      author = "David Fletcher";
      homepage = "http://www.bubblycloud.com/hills/";
      url = "";
      synopsis = "Generate STL models from SRTM elevation data.";
      description = "This program generates 3D models of areas of the\nearth's surface.\n\nIt uses the SRTM 90m elevation data from\nCGIAR-CSI which is downloadable free of charge\n(see <http://srtm.csi.cgiar.org/>).  It outputs STL.\n\nConsult README.md for full instructions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hills" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }