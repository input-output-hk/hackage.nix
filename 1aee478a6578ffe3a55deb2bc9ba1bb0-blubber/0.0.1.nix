{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blubber";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) plaimi 2015";
        maintainer = "blubber@plaimi.net";
        author = "plaimi";
        homepage = "https://secure.plaimi.net/games/blubber.html";
        url = "";
        synopsis = "The blubber client; connects to the blubber\nserver.";
        description = "The blubber client. blubber is an arcade game in\nwhich the player tries to build the biggest blub\nby blubberping the other blubs before they\nblubber the player's blub.";
        buildType = "Simple";
      };
      components = {
        exes = {
          blubber = {
            depends  = [
              hsPkgs.base
              hsPkgs.blubber-server
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.gloss
              hsPkgs.network
              hsPkgs.unix
            ];
          };
        };
      };
    }