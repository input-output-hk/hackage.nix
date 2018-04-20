{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "s-cargot";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Getty Ritter";
        maintainer = "gettyritter@gmail.com";
        author = "Getty Ritter";
        homepage = "https://github.com/aisamanra/s-cargot";
        url = "";
        synopsis = "A flexible, extensible s-expression library.";
        description = "S-Cargot is a library for working with s-expressions in\na modular and extensible way, opting for genericity and\nflexibility instead of speed. Instead of understanding\none particular form of s-expression, the S-Cargot library\nexposes tools for parsing or emitting different kinds of\ns-expressions, including features not normally included\nin an s-expression library like reader macros or tight\ncontrol over indentation in pretty-printing.";
        buildType = "Simple";
      };
      components = {
        s-cargot = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.containers
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.s-cargot
              hsPkgs.text
            ];
          };
        };
        tests = {
          s-cargot-qc = {
            depends  = [
              hsPkgs.s-cargot
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.text
            ];
          };
        };
      };
    }