{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "powerqueue";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/powerqueue#readme";
        url = "";
        synopsis = "A flexible job queue with exchangeable backends";
        description = "A flexible job queue with exchangeable backends\n\nCurrent Queue (Persistence) Backends:\n\n* <https://hackage.haskell.org/package/powerqueue-levelmem LevelDB>\n* <https://hackage.haskell.org/package/powerqueue-sqs AWS SQS>\n\nCurrent Worker Backends:\n\n* <https://hackage.haskell.org/package/powerqueue-distributed TCP-Network Distributed>";
        buildType = "Simple";
      };
      components = {
        powerqueue = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
            hsPkgs.async
            hsPkgs.timespan
          ];
        };
        tests = {
          powerqueue-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.powerqueue
              hsPkgs.hspec
              hsPkgs.stm
              hsPkgs.async
            ];
          };
        };
      };
    }