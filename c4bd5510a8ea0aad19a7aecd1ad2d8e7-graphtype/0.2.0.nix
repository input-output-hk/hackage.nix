{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "graphtype";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009,2010 Dmitry Astapov";
      maintainer = "Max Desyatov <explicitcall at gmail.com>";
      author = "Dmitry Astapov";
      homepage = "http://github.com/explicitcall/graphtype";
      url = "";
      synopsis = "A simple tool to illustrate dependencies between Haskell types";
      description = "This tools produces diagrams of Haskell type interdependencies in the given source.\nActual drawing is done by graphviz tools (dot).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "graphtype" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
            (hsPkgs.containers)
            (hsPkgs.haskell98)
            (hsPkgs.dotgen)
          ];
        };
      };
    };
  }