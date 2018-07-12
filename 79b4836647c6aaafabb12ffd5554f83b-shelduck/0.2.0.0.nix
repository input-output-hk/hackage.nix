{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shelduck";
          version = "0.2.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "robertjflong@gmail.com";
        author = "Bob Long";
        homepage = "";
        url = "";
        synopsis = "Test webhooks locally";
        description = "Opinionated tool for QAing webhooks on remote services using ngrok";
        buildType = "Simple";
      };
      components = {
        "shelduck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Spock
            hsPkgs.async
            hsPkgs.text
            hsPkgs.lens-aeson
            hsPkgs.lens
            hsPkgs.stm
            hsPkgs.wreq
            hsPkgs.aeson
            hsPkgs.hastache
            hsPkgs.random
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.shelly
            hsPkgs.uuid
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.yesod
            hsPkgs.directory
            hsPkgs.aeson-pretty
            hsPkgs.shelly
            hsPkgs.mtl
            hsPkgs.http-client
            hsPkgs.exceptions
          ];
        };
        exes = {
          "shelduck" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shelduck
              hsPkgs.Spock
              hsPkgs.async
              hsPkgs.text
              hsPkgs.lens-aeson
              hsPkgs.lens
              hsPkgs.stm
              hsPkgs.wreq
              hsPkgs.aeson
              hsPkgs.hastache
              hsPkgs.random
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.shelly
              hsPkgs.uuid
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.yesod
              hsPkgs.directory
              hsPkgs.aeson-pretty
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.http-client
              hsPkgs.exceptions
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.aeson
              hsPkgs.shelduck
              hsPkgs.regex-compat
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.stm
              hsPkgs.wreq
              hsPkgs.http-client
              hsPkgs.mtl
            ];
          };
        };
      };
    }