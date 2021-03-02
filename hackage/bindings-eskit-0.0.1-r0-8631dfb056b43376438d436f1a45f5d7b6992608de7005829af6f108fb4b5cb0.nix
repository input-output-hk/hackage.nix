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
      identifier = { name = "bindings-eskit"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Miller <andrew@amxl.com>";
      author = "Andrew Miller <andrew@amxl.com>";
      homepage = "http://github.com/a1kmm/bindings-eskit";
      url = "";
      synopsis = "Bindings to ESKit.";
      description = "Bindings to ESKit <http://www.marmakoide.org/api-doc/eskit/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        libs = [ (pkgs."eskit" or (errorHandler.sysDepError "eskit")) ];
        pkgconfig = [
          (pkgconfPkgs."eskit" or (errorHandler.pkgConfDepError "eskit"))
          ];
        buildable = true;
        };
      };
    }