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
      identifier = { name = "web-routes-hsp"; version = "0.24.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Adds XMLGenerator instance for RouteT monad";
      description = "The module makes it easy to use type-safe URLs in HSP templates";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          ];
        buildable = true;
        };
      };
    }