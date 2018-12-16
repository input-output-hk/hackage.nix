{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "firebase-database";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2018 Nick Hamilton";
      maintainer = "Nick Hamilton <projects@nickhamilton.ninja>";
      author = "Nick Hamilton";
      homepage = "https://github.com/nghamilton/firebase-database";
      url = "";
      synopsis = "Google Firebase Database SDK";
      description = "SDK for connecting to Google's Firebase Database, using Firebase REST endpoints.\n\nUses Server-Sent Events (SSE) protocol to receive real-time updates from the Firebase server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.generic-random)
          (hsPkgs.http-streams)
          (hsPkgs.io-streams)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.string-conversions)
          (hsPkgs.unordered-containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.nano-http)
          (hsPkgs.split)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.generic-random)
            (hsPkgs.http-streams)
            (hsPkgs.io-streams)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.http-types)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.string-conversions)
            (hsPkgs.unordered-containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.nano-http)
            (hsPkgs.split)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }