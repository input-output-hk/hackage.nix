{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "force-layout";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Brent Yorgey";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Simple force-directed layout";
        description = "Simulation engine for doing simple force-based layout,\n/e.g./ for trees or graphs.  See the diagrams-contrib package\nfor usage examples.";
        buildType = "Simple";
      };
      components = {
        "force-layout" = {
          depends  = [
            hsPkgs.base
            hsPkgs.linear
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.data-default-class
          ];
        };
      };
    }