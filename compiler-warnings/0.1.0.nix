{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "compiler-warnings";
          version = "0.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/compiler-warnings#readme";
        url = "";
        synopsis = "Parser for common compiler warning formats";
        description = "";
        buildType = "Simple";
      };
      components = {
        compiler-warnings = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.parsec
          ];
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.compiler-warnings
            ];
          };
        };
      };
    }