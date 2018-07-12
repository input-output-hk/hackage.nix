{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "open-haddock";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Jonathan M. Lange 2015";
        maintainer = "jml@mumak.net";
        author = "Jonathan Lange";
        homepage = "";
        url = "";
        synopsis = "Open haddock HTML documentation";
        description = "When operating in a sandbox, or inside a nix-shell, it is\nuseful to be able to open the documentation for a\nparticular package or module.\n\nThis simple command-line tool will open the local haddock\ndocumentation for a particular package or module.\n\nParticularly useful for offline hacking.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "open-haddock" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.text
              hsPkgs.turtle
            ];
          };
        };
      };
    }