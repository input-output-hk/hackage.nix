{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fold-debounce";
          version = "0.2.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Toshio Ito <debug.ito@gmail.com>";
        author = "Toshio Ito <debug.ito@gmail.com>";
        homepage = "https://github.com/debug-ito/fold-debounce";
        url = "";
        synopsis = "Fold multiple events that happen in a given period of time.";
        description = "Fold multiple events that happen in a given period of time. See \"Control.FoldDebounce\".";
        buildType = "Simple";
      };
      components = {
        "fold-debounce" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.stm-delay
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fold-debounce
              hsPkgs.hspec
              hsPkgs.stm
              hsPkgs.time
            ];
          };
          "spec-threaded" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fold-debounce
              hsPkgs.hspec
              hsPkgs.stm
              hsPkgs.time
            ];
          };
        };
      };
    }