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
    flags = { debug = false; threadscope = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "HaskellTorrent"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Jesper Louis Andersen";
      maintainer = "jesper.louis.andersen@gmail.com";
      author = "Jesper Louis Andersen";
      homepage = "";
      url = "";
      synopsis = "A concurrent bittorrent client";
      description = "HaskellTorrent provides a BitTorrent client, based on the CML library\nfor concurrency. This is an early preview release which is capable of\ndownloading files from various torrent trackers, but have not yet\ndemonstrated to be correct in all aspects.\nIt is expected that the package currently contains numerous and even\ngrave bugs. Patches to fix any problem are welcome!";
      buildType = "Configure";
      };
    components = {
      exes = {
        "HaskellTorrent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cml" or (errorHandler.buildDepError "cml"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }