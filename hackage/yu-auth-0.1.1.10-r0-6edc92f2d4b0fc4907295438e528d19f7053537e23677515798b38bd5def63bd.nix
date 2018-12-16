{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { server-side = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yu-auth";
        version = "0.1.1.10";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017-2018 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "Auth module for Yu.";
      description = "Helper of auth via SHA for Yu";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cryptonite)
          (hsPkgs.yu-utils)
          (hsPkgs.memory)
        ];
      };
      tests = {
        "test-core" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yu-utils)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.yu-auth)
          ];
        };
        "test-auth" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yu-auth)
            (hsPkgs.yu-utils)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.yesod-test)
            (hsPkgs.yesod-core)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }