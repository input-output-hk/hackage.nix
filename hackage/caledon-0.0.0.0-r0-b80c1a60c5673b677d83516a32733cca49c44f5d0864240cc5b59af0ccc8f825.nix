{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "caledon";
        version = "0.0.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Matthew Mirman <mmirman@andrew.cmu.edu>";
      author = "Matthew Mirman";
      homepage = "https://github.com/mmirman/caledon";
      url = "";
      synopsis = "a dependently typed, polymorphic, higher order logic programming language";
      description = "a dependently typed, polymorphic, higher order logic programming language. ie, everything you need to have a conversation with your computer.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "caledon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }