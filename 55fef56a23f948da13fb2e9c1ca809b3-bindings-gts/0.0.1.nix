{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "bindings-gts";
          version = "0.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "Joel Crisp <joel.a.crisp@googlemail.com>";
        author = "Maurício C. Antunes (Bindings-DSL), Joel Crisp (Bindings-GTS), Stephane Popinet <s.popinet at niwa.co.nz> (GTS)";
        homepage = "http://gts.sourceforge.net/";
        url = "";
        synopsis = "Low level bindings supporting GTS, the GNU Triangulated Surface Library";
        description = "This package contains bindings to GTS library using\nbindings-DSL macros and style. Like GObject, it's\nnot useful by itself, but as a foundation for other\nlibraries making use of its type system. NOTE: these bindings\nwere not made by the author(s) of GTS so please don't bug them\nabout issues with the bindings! Any errors in these bindings\nare my responsibility not that of the GTS team. Not all functionality\nis covered by these bindings at this time, but there should be enough\nto be useful.";
        buildType = "Simple";
      };
      components = {
        bindings-gts = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.bindings-glib
            hsPkgs.bindings-gobject
          ];
        };
      };
    }