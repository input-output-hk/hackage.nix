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
      specVersion = "1.6";
      identifier = { name = "web-routes-regular"; version = "0.19.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "portable, type-safe URL routing";
      description = "This library adds support for parsing/printing URLs using the regular generics library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          ];
        buildable = true;
        };
      };
    }