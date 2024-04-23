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
      identifier = { name = "once"; version = "0.2"; };
      license = "GPL-3.0-only";
      copyright = "2015,2016 Dmitry Bogatov";
      maintainer = "KAction@gnu.org";
      author = "Dmitry Bogatov";
      homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-once.git";
      url = "";
      synopsis = "memoization for IO actions and functions";
      description = "Please see Control.Once for examples";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }