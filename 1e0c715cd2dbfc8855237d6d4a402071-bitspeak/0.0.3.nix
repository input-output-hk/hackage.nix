{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bitspeak";
          version = "0.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "none";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "Proof-of-concept tool for writing using binary choices.";
        description = "This was an application for exercising writing\nusing binary choices, i.e., selecting from two sets of\nconsecutive letters.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bitspeak = {
            depends  = [
              hsPkgs.base
              hsPkgs.bindings-DSL
              hsPkgs.bindings-glib
              hsPkgs.bindings-gobject
            ];
          };
        };
      };
    }