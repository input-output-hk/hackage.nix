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
      specVersion = "0";
      identifier = { name = "hinotify"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Lennart Kolmodin";
      author = "Lennart Kolmodin";
      homepage = "http://haskell.org/~kolmodin/code/hinotify/";
      url = "";
      synopsis = "Haskell binding to INotify";
      description = "Haskell binding to INotify";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }