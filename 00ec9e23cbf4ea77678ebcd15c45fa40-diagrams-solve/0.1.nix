{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-solve";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "various";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Pure Haskell solver routines used by diagrams";
        description = "Pure Haskell solver routines used by the diagrams\nproject.  Currently includes finding real roots\nof low-degree (n < 5) polynomials, and solving\ntridiagonal and cyclic tridiagonal linear\nsystems.";
        buildType = "Simple";
      };
      components = {
        "diagrams-solve" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }