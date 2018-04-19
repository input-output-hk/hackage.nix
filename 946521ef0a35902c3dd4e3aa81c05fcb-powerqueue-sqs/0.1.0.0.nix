{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "powerqueue-sqs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/powerqueue#readme";
        url = "";
        synopsis = "A Amazon SQS backend for powerqueue";
        description = "A Amazon SQS backend for powerqueue";
        buildType = "Simple";
      };
      components = {
        powerqueue-sqs = {
          depends  = [
            hsPkgs.base
            hsPkgs.powerqueue
            hsPkgs.aws-simple
            hsPkgs.text
            hsPkgs.timespan
          ];
        };
      };
    }