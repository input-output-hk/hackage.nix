{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "voicebase";
        version = "0.1.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Daisee Pty Ltd";
      maintainer = "jappie.klooster@daisee.com";
      author = "Jappie Klooster";
      homepage = "https://bitbucket.org/daisee/voicebase";
      url = "";
      synopsis = "Upload audio files to voicebase to get a transcription";
      description = "voicebase bindings for <http://voicebase.readthedocs.io/en/v2-beta/>";
      buildType = "Simple";
    };
    components = {
      "voicebase" = {
        depends  = [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-openssl)
          (hsPkgs.json-autotype)
          (hsPkgs.lens)
          (hsPkgs.mime-types)
          (hsPkgs.text)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "voicebase" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.mime-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.voicebase)
          ];
        };
      };
      tests = {
        "voicebase-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.voicebase)
          ];
        };
      };
    };
  }