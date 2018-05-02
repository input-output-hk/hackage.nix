{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "katip-kafka";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Aleksey Uimanov";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uimanov";
        homepage = "https://github.com/s9gf4ult/katip-kafka";
        url = "";
        synopsis = "Katip scribe to send logs to Kafka";
        description = "";
        buildType = "Simple";
      };
      components = {
        katip-kafka = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.hw-kafka-client
            hsPkgs.katip
          ];
        };
      };
    }