{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sscan";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2017 Sean Whitton";
        maintainer = "spwhitton@spwhitton.name";
        author = "Sean Whitton";
        homepage = "";
        url = "";
        synopsis = "text UI for scanning with SANE";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "sscan" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.text
              hsPkgs.vty
              hsPkgs.temporary
              hsPkgs.process
              hsPkgs.time
              hsPkgs.async
            ];
          };
        };
      };
    }