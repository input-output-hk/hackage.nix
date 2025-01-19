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
      specVersion = "3.0";
      identifier = { name = "mini"; version = "1.5.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Victor Wallsten <victor.wallsten@protonmail.com>";
      author = "Victor Wallsten <victor.wallsten@protonmail.com>";
      homepage = "https://gitlab.com/vicwall/mini";
      url = "";
      synopsis = "Minimal essentials";
      description = "Everyday essentials: data structures, lenses, transformers, and parsing.\n\nUncompromisingly light on dependencies.\n\nEasily navigable code base, keeping indirection and clutter to a minimum.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }