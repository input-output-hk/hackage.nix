{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
      library-only = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "battleships";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thorand@cs.uni-bonn.de";
        author = "Meike Grewing, Lukas Heidemann, Fabian Thorand, Fabian Zaiser";
        homepage = "https://github.com/zrho/afp";
        url = "";
        synopsis = "A web-based implementation of battleships including an AI opponent.";
        description = "This package provides a web-based implementation of the popular\nbattleships game, developed over the course of a practical functional\nprogramming class at the University of Bonn (<http://www.iai.uni-bonn.de/~jv/teaching/afp13/>).\nAlongside with the classical gameplay against an AI opponent, a game mode\nis provided in which players may move their undamaged ships.";
        buildType = "Simple";
      };
      components = {
        "battleships" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod
            hsPkgs.yesod-core
            hsPkgs.yesod-static
            hsPkgs.yesod-routes
            hsPkgs.hamlet
            hsPkgs.shakespeare-text
            hsPkgs.wai-extra
            hsPkgs.wai-logger
            hsPkgs.cookie
            hsPkgs.hjsmin
            hsPkgs.mtl
            hsPkgs.MonadRandom
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.blaze-svg
            hsPkgs.diagrams-svg
            hsPkgs.diagrams-lib
            hsPkgs.colour
            hsPkgs.template-haskell
            hsPkgs.data-default
            hsPkgs.fast-logger
            hsPkgs.cereal
            hsPkgs.transformers
            hsPkgs.base64-bytestring
            hsPkgs.SimpleAES
            hsPkgs.attoparsec
            hsPkgs.word8
            hsPkgs.shakespeare-js
            hsPkgs.yaml
            hsPkgs.filepath
          ] ++ pkgs.lib.optionals _flags.library-only [
            hsPkgs.warp
            hsPkgs.directory
          ];
        };
        exes = {
          "main.fcgi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.battleships
              hsPkgs.yesod
            ] ++ (if _flags.dev
              then [ hsPkgs.warp ]
              else [
                hsPkgs.wai-handler-fastcgi
              ]);
          };
          "img-gen" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.battleships
              hsPkgs.bytestring
              hsPkgs.blaze-svg
              hsPkgs.diagrams-svg
              hsPkgs.diagrams-lib
              hsPkgs.filepath
            ];
          };
          "aibenchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.battleships
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.MonadRandom
            ];
          };
          "key-gen" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.crypto-random
            ];
          };
        };
      };
    }