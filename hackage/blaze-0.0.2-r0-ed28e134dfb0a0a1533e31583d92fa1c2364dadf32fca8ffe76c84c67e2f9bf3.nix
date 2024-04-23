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
      identifier = { name = "blaze"; version = "0.0.2"; };
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