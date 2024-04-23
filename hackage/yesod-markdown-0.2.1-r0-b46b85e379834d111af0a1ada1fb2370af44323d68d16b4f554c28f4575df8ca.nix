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
      identifier = { name = "yesod-markdown"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Alexander Dunlap";
      maintainer = "alexander.dunlap@gmail.com";
      author = "Alexander Dunlap";
      homepage = "";
      url = "";
      synopsis = "Markdown processing for Yesod sites using Pandoc";
      description = "Process Markdown in Yesod sites.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }