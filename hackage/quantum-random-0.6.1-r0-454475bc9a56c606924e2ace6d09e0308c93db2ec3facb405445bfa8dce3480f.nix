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
      identifier = { name = "quantum-random"; version = "0.6.1"; };
      license = "MIT";
      copyright = "2016";
      maintainer = "cs.hbar+hs@gmail.com";
      author = "Cliff Harvey";
      homepage = "http://github.com/BlackBrane/quantum-random/";
      url = "";
      synopsis = "Retrieve, store and manage real quantum random data.";
      description = "Retrieve, store and manage real quantum random data, originating from vacuum\nfluctuations of the electromagnetic field and served by Australian National\nUniversity.\n\nThe package is designed to ensure quantum random data is promptly available for\nyour application by keeping a sufficient amount locally. When depleted to a\nspecified level, more data is downloaded concurrently over SSL. It can be\nconfigured by specifying the minimum store size (below which more data are\nretrieved) the target store size (the size of the store after retrieval) and\nthe default display style.\n\nFor more information on the API service on which this package is based,\nvisit the ANU QRN webpage at <http://qrng.anu.edu.au/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansigraph" or (errorHandler.buildDepError "ansigraph"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "qrand" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quantum-random" or (errorHandler.buildDepError "quantum-random"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-quantum-random" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quantum-random" or (errorHandler.buildDepError "quantum-random"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }