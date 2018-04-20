{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "happy";
          version = "1.19.8";
        };
        license = "BSD-2-Clause";
        copyright = "(c) Andy Gill, Simon Marlow";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Andy Gill and Simon Marlow";
        homepage = "https://www.haskell.org/happy/";
        url = "";
        synopsis = "Happy is a parser generator for Haskell";
        description = "Happy is a parser generator for Haskell.  Given a grammar\nspecification in BNF, Happy generates Haskell code to parse the\ngrammar.  Happy works in a similar way to the @yacc@ tool for C.";
        buildType = "Custom";
      };
      components = {
        exes = {
          happy = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }