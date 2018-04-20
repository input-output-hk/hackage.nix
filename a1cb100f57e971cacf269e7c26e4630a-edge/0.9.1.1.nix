{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "edge";
          version = "0.9.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ch.howard@zoho.com";
        author = "Christopher Howard";
        homepage = "https://qlfiles.net/the-ql-files/the-edge/";
        url = "";
        synopsis = "Top view space combat arcade game";
        description = "The Edge has always been a rough patch of interstellar\nspace filled with innumerable bad guys of every nefarious\nsort, and dangerous debris flying in every direction at\nhigh speeds. But now it has grown out of control and is\nthreatening to overflow into colonial space. Central\ncommand has decided to send in their newest super weapon,\nthe Mark II Lance fighter, piloted by their top ace pilot.\nGood luck commander!";
        buildType = "Simple";
      };
      components = {
        exes = {
          edge = {
            depends  = [
              hsPkgs.gloss
              hsPkgs.wraparound
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.OpenAL
              hsPkgs.ALUT
              hsPkgs.random
              hsPkgs.cmdtheline
            ];
          };
        };
      };
    }