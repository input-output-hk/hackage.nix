{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "speechmatics";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Daisee Pty Ltd";
      maintainer = "jappie.klooster@daisee.com";
      author = "Jappie Klooster";
      homepage = "https://bitbucket.org/daisee/speechmatics-api-client/";
      url = "";
      synopsis = "Speechmatics api client";
      description = "Upload audio files to speechmatics to get a transcription";
      buildType = "Simple";
    };
    components = {
      "speechmatics" = {
        depends  = [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.heavy-logger)
          (hsPkgs.http-client)
          (hsPkgs.http-client-openssl)
          (hsPkgs.http-types)
          (hsPkgs.json-autotype)
          (hsPkgs.lens)
          (hsPkgs.mime-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.text-format-heavy)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "speechmatics" = {
          depends  = [
            (hsPkgs.SHA)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.heavy-logger)
            (hsPkgs.mime-types)
            (hsPkgs.mtl)
            (hsPkgs.options)
            (hsPkgs.speechmatics)
            (hsPkgs.text)
            (hsPkgs.text-format-heavy)
          ];
        };
      };
      tests = {
        "speechmatics-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.heavy-logger)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.neat-interpolation)
            (hsPkgs.speechmatics)
            (hsPkgs.text)
            (hsPkgs.text-format-heavy)
          ];
        };
      };
    };
  }