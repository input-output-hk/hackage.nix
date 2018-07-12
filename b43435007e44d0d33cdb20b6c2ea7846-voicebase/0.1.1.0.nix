{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "voicebase";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Daisee Pty Ltd";
        maintainer = "jappie.klooster@daisee.com";
        author = "Jappie Klooster";
        homepage = "";
        url = "";
        synopsis = "Upload audio files to voicebase to get a transcription";
        description = "voicebase bindings for <http://voicebase.readthedocs.io/en/v2-beta/>";
        buildType = "Simple";
      };
      components = {
        "voicebase" = {
          depends  = [
            hsPkgs.HsOpenSSL
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-openssl
            hsPkgs.json-autotype
            hsPkgs.lens
            hsPkgs.mime-types
            hsPkgs.text
            hsPkgs.wreq
          ];
        };
        exes = {
          "voicebase" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mime-types
              hsPkgs.options
              hsPkgs.voicebase
            ];
          };
        };
        tests = {
          "voicebase-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.voicebase
            ];
          };
        };
      };
    }