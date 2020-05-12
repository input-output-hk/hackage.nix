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
      specVersion = "1.6";
      identifier = { name = "WXDiffCtrl"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.odonoghue@gmail.com";
      author = "Jeremy O'Donoghue";
      homepage = "http://wewantarock.wordpress.com";
      url = "";
      synopsis = "WXDiffCtrl";
      description = "A very simple diff control, written as an example of how to create a\ncustom control in wxHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            ];
        buildable = true;
        };
      };
    }