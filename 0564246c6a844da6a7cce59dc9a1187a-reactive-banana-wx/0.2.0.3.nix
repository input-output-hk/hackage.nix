{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "reactive-banana-wx";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "https://github.com/HeinrichApfelmus/Haskell-BlackBoard";
        url = "";
        synopsis = "Examples for the reactive-banana library, using wxHaskell.";
        description = "This library provides some examples for the @reactive-banana@ library,\nusing wxHaskell.";
        buildType = "Simple";
      };
      components = {
        reactive-banana-wx = {
          depends  = [
            hsPkgs.base
            hsPkgs.reactive-banana
            hsPkgs.wx
            hsPkgs.wxcore
          ];
        };
        exes = {
          Counter = {
            depends  = [
              hsPkgs.base
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
            ];
          };
        };
      };
    }