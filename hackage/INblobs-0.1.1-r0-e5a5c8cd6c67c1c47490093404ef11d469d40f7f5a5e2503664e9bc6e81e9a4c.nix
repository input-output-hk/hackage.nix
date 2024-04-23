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
      identifier = { name = "INblobs"; version = "0.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jmvilaca@di.uminho.pt, danielgomesmendes@gmail.com";
      author = "Arjan van IJzendoorn, Martijn Schrage, Malcolm Wallace, Miguel Vilaca";
      homepage = "http://haskell.di.uminho.pt/jmvilaca/INblobs/";
      url = "";
      synopsis = "Editor and interpreter for Interaction Nets";
      description = "INblobs is a visual tool developed at Minho for integrated development with\nInteraction Nets (<http://en.wikipedia.org/wiki/Interaction_nets>).\nINblobs includes a visual editor that allows users to edit both interaction\nnets and interaction rules; nets may then be reduced within the tool, or\nelse exported in a text format to be given as input to other tools.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "INblobs" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }