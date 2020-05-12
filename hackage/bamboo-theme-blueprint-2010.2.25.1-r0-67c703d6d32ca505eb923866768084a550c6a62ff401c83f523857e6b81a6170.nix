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
      identifier = {
        name = "bamboo-theme-blueprint";
        version = "2010.2.25.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing <nfjinjing@gmail.com>\n, Григорий Холомьёв <omever@gmail.com>";
      homepage = "http://github.com/nfjinjing/bamboo-theme-blueprint";
      url = "";
      synopsis = "bamboo blueprint theme";
      description = "bamboo blueprint theme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."rss" or (errorHandler.buildDepError "rss"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."gravatar" or (errorHandler.buildDepError "gravatar"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
          (hsPkgs."hcheat" or (errorHandler.buildDepError "hcheat"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
          (hsPkgs."bamboo" or (errorHandler.buildDepError "bamboo"))
          ];
        buildable = true;
        };
      };
    }