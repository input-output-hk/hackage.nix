{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "diagrams";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Embedded domain-specific language for declarative vector graphics";
        description = "Diagrams is an embedded domain-specific langauge for\ndeclarative vector graphics.  This package is\njust a wrapper that depends on the diagrams-core,\ndiagrams-lib, and diagrams-cairo packages.";
        buildType = "Simple";
      };
      components = {
        diagrams = {
          depends  = [
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-cairo
          ];
        };
      };
    }