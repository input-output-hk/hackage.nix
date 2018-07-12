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
          version = "1.19.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Andy Gill, Simon Marlow";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Andy Gill and Simon Marlow";
        homepage = "http://www.haskell.org/happy/";
        url = "";
        synopsis = "Happy is a parser generator for Haskell";
        description = "Happy is a parser generator for Haskell.  Given a grammar\nspecification in BNF, Happy generates Haskell code to parse the\ngrammar.  Happy works in a similar way to the @yacc@ tool for C.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "happy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.array
                hsPkgs.containers
              ]
              else [ hsPkgs.base ]);
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }