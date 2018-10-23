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
        name = "rollbar-hs";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Hardy Jones";
      maintainer = "jones3.hardy@gmail.com";
      author = "Hardy Jones";
      homepage = "https://github.com/joneshf/rollbar-hs#readme";
      url = "";
      synopsis = "Core Rollbar data types and APIs.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "rollbar-hs" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.hostname)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "doc-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.rollbar-hs)
            (hsPkgs.text)
          ];
        };
      };
    };
  }