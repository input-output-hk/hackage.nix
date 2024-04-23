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
      identifier = { name = "validate"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "None";
      homepage = "";
      url = "";
      synopsis = "None";
      description = "None";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }