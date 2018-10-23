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
        name = "test-sandbox-compose";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Lightweight development enviroments using test-sandbox";
      description = "";
      buildType = "Simple";
    };
    components = {
      "test-sandbox-compose" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.hastache)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.test-sandbox)
          (hsPkgs.yaml)
          (hsPkgs.network)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.warp)
          (hsPkgs.process)
          (hsPkgs.lifted-base)
          (hsPkgs.directory)
          (hsPkgs.unix)
          (hsPkgs.shelly)
          (hsPkgs.http-conduit)
        ];
      };
      exes = {
        "test-sandbox-compose" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-sandbox-compose)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.hastache)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.test-sandbox)
            (hsPkgs.yaml)
            (hsPkgs.network)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.bytestring)
            (hsPkgs.warp)
            (hsPkgs.process)
            (hsPkgs.lifted-base)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.shelly)
            (hsPkgs.http-conduit)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.cabal-test-bin)
            (hsPkgs.test-sandbox)
            (hsPkgs.hspec-test-sandbox)
          ];
        };
      };
    };
  }