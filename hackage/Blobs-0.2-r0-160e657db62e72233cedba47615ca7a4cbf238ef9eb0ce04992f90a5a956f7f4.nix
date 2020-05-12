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
      specVersion = "1.9.2";
      identifier = { name = "Blobs"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Alan Zimmerman <alan.zimm@gmail.com>";
      author = "Arjan van IJzendoorn, Martijn Schrage, Malcolm Wallace";
      homepage = "http://www.cs.york.ac.uk/fp/darcs/Blobs/";
      url = "";
      synopsis = "Diagram editor";
      description = "Blobs is a diagram editor for directed graphs. It is written in\nHaskell, using the platform-independent GUI toolkit wxHaskell. It\nis a community project at a fairly early stage of development - you\nare encouraged to get involved and improve it!\n\nBlobs is a front-end for drawing and editing graph diagrams. You\nmust add your own back-end engine if you want it to do some\nanalysis or processing of the graph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "blobs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }