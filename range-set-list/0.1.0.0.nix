{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "range-set-list";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/range-set-list#readme";
        url = "";
        synopsis = "Memory efficient sets with continuous ranges of elements.";
        description = "Memory efficient sets with continuous ranges of elements. List based implementation. Interface mimics 'Data.Set' interface where possible.";
        buildType = "Simple";
      };
      components = {
        range-set-list = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.range-set-list
            ];
          };
        };
      };
    }