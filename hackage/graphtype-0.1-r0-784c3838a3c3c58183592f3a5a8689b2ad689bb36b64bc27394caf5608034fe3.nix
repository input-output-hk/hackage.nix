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
      specVersion = "0";
      identifier = {
        name = "graphtype";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmity Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov";
      homepage = "";
      url = "";
      synopsis = "A simple tool to illustrate dependencies between Haskell types";
      description = "This tools produces diagrams of Haskell type interdependencies in the given source.\nActual drawing is done by graphviz tools (dot).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "graphtype" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
            (hsPkgs.containers)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }