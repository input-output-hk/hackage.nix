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
      identifier = { name = "sitemap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "";
      url = "";
      synopsis = "Sitemap parser";
      description = "Sitemap parser. See the \"Web.Sitemap\" module for an example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."taggy" or (errorHandler.buildDepError "taggy"))
          (hsPkgs."taggy-lens" or (errorHandler.buildDepError "taggy-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }