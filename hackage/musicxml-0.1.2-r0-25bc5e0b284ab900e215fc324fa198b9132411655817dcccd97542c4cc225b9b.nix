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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "musicxml"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2009 Samuel Silva";
      maintainer = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      author = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      homepage = "https://troglodita.di.uminho.pt/svn/musica/work/MusicXML";
      url = "";
      synopsis = "MusicXML format encoded as Haskell type and functions of reading\nand writting.";
      description = "This package presents MusicXML format typed at Haskell language\nto be interface between MusicXML format and MusicXML\napplications developed using Haskell. This package allows read\nand write MusicXML documents at least 2.0 version as partwise or\ntimewise format besides opus and container specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }