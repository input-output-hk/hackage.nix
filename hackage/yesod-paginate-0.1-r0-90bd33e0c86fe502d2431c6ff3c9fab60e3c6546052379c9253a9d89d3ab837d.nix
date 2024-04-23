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
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-paginate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Alexander Dunlap";
      maintainer = "alexander.dunlap@gmail.com";
      author = "Alexander Dunlap";
      homepage = "";
      url = "";
      synopsis = "Pagination for Yesod sites.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }