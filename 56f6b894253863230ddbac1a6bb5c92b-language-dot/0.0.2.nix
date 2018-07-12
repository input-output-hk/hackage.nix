{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-dot";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2009 Galois, Inc.";
        maintainer = "Brian Lewis <brian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "A library for the analysis and creation of Graphviz DOT files";
        description = "A library for the analysis and creation of Graphviz DOT files.";
        buildType = "Custom";
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
        exes = { "ppdot" = {}; };
      };
    }