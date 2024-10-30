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
      specVersion = "2.4";
      identifier = { name = "mini"; version = "1.4.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Victor Wallsten <victor.wallsten@protonmail.com>";
      author = "Victor Wallsten <victor.wallsten@protonmail.com>";
      homepage = "https://gitlab.com/vicwall/mini";
      url = "";
      synopsis = "Minimal essentials";
      description = "A minimal yet powerful library of essentials: data structures, lenses,\ntransformers, and parsing. Uncompromisingly light on dependencies. Easily\nnavigable code base, keeping indirection and clutter to a minimum.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }