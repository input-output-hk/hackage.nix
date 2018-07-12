{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "streamproc";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2004-2010 Shawn Garbett and Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
        homepage = "http://gitorious.org/streamproc";
        url = "";
        synopsis = "Stream Processer Arrow";
        description = "A continuation-based stream processor implemented as an\nArrow. This version generalizes the SP type described\nin John Hughes \\\"Generalising Monads to Arrows\\\" to\nfunction as a wrapper for arbitrary monads.";
        buildType = "Simple";
      };
      components = {
        "streamproc" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }