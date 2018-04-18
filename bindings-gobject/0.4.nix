{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bindings-gobject";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "Low level bindings supporting GObject and derived libraries.";
        description = "This package contains bindings to GObject library, using\nbindings-DSL macros and style. Like GObject, it's\nnot useful by itself, but as a foundation for other\nlibraries making use of its type system.";
        buildType = "Simple";
      };
      components = {
        bindings-gobject = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.bindings-glib
          ];
        };
      };
    }