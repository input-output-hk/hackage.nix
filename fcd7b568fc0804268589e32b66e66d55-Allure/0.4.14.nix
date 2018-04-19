{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Allure";
          version = "0.4.14";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski and others";
        homepage = "http://allureofthestars.com";
        url = "";
        synopsis = "Near-future roguelike game in early development";
        description = "This is an alpha release of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nSee the wiki for design notes and contribute.\n\n<<https://raw.githubusercontent.com/AllureOfTheStars/media/master/screenshot/safari1.png>>\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour.\n\nThe game is written using the LambdaHack roguelike game engine\navailable at <http://hackage.haskell.org/package/LambdaHack>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          Allure = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.array
              hsPkgs.assert-failure
              hsPkgs.async
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.enummapset-th
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hsini
              hsPkgs.keys
              hsPkgs.miniutter
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.pretty-show
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.zlib
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.array
              hsPkgs.assert-failure
              hsPkgs.async
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.enummapset-th
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hsini
              hsPkgs.keys
              hsPkgs.miniutter
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.pretty-show
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.zlib
            ];
          };
        };
      };
    }