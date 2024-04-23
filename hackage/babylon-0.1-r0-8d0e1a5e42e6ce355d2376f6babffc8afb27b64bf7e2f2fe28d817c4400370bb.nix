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
      specVersion = "1.2";
      identifier = { name = "babylon"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Pedro Vasconcelos";
      maintainer = "";
      author = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      homepage = "";
      url = "";
      synopsis = "An implementation of a simple 2-player board game";
      description = "The board game was originally designed by Bruno Faidutti (www.faidutti.com).\nIn this implementation you play against the computer.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "babylon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
          buildable = true;
        };
      };
    };
  }