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
      identifier = { name = "HsSyck"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Fast, lightweight YAML loader and dumper";
      description = "Fast, lightweight YAML loader and dumper";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }