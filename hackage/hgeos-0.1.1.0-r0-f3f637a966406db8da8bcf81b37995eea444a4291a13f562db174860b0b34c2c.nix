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
      identifier = { name = "hgeos"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(C) 2016 Richard Cook";
      maintainer = "Richard Cook <rcook@rcook.org>";
      author = "Richard Cook <rcook@rcook.org>";
      homepage = "https://github.com/rcook/hgeos#readme";
      url = "";
      synopsis = "Simple Haskell bindings to GEOS C API";
      description = "Simple Haskell bindings to the GEOS C API heavily inspired by\n<https://github.com/django/django/tree/master/django/contrib/gis/geos Django GEOS bindings>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."geos_c" or (errorHandler.sysDepError "geos_c")) ];
        buildable = true;
        };
      tests = {
        "hgeos-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgeos" or (errorHandler.buildDepError "hgeos"))
            ];
          buildable = true;
          };
        };
      };
    }