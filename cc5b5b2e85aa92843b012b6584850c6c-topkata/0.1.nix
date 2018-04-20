{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      sound = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "topkata";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
        author = "Christoph Bauer";
        homepage = "http://home.arcor.de/chr_bauer/topkata.html";
        url = "";
        synopsis = "OpenGL Arcade Game";
        description = "Guide a jumping ball through a labyrinth.";
        buildType = "Simple";
      };
      components = {
        exes = {
          topkata = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.GLUT
              hsPkgs.OpenGL
              hsPkgs.array
              hsPkgs.random
            ] ++ pkgs.lib.optionals _flags.sound [
              hsPkgs.OpenAL
              hsPkgs.ALUT
            ];
          };
          pdflaby = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.array
              hsPkgs.random
              hsPkgs.cairo
            ];
          };
        };
      };
    }