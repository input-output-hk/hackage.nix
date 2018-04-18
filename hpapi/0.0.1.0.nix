{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hpapi";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008, Michael D. Adams";
        maintainer = "Michael D. Adams <adamsmd [AT] cs.indiana.edu>";
        author = "Michael D. Adams <adamsmd [AT] cs.indiana.edu>";
        homepage = "";
        url = "";
        synopsis = "Binding for the PAPI library";
        description = "This package contains bindings for the\nPerformance Application Programming Interface\n(<http://icl.cs.utk.edu/papi/index.html>).\nIt provides a basic interface to the PAPI library\nfor reading and controlling CPU counters\n(e.g. L1 cache miss count).";
        buildType = "Simple";
      };
      components = {
        hpapi = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.papi ];
        };
      };
    }