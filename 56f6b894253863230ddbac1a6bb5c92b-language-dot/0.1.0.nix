{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-dot";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Galois, Inc.";
        maintainer = "Ben Gamari <ben@smart-cactus.org>";
        author = "Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "A library for the analysis and creation of Graphviz DOT files";
        description = "A library for the analysis and creation of Graphviz DOT files.";
        buildType = "Simple";
      };
      components = {
        "language-dot" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
          ];
        };
        exes = {
          "ppdot" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
            ];
          };
        };
      };
    }