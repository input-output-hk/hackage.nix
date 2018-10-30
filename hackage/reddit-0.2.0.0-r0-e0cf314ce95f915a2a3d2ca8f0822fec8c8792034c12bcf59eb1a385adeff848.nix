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
        name = "reddit";
        version = "0.2.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) Fraser Murray, 2013-2015";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "https://github.com/intolerable/reddit";
      url = "";
      synopsis = "Library for interfacing with Reddit's API";
      description = "A library for interfacing with Reddit's API in Haskell. Handles\nlogins, rate-limiting and converting to and from JSON responses.\nSupports most user-facing Reddit API functions, as well as some\nmoderator endpoints.\nCheck out the readme at <https://github.com/intolerable/reddit>.\nContributions are welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.api-builder)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.free)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.api-builder)
            (hsPkgs.bytestring)
            (hsPkgs.reddit)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "test-io" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.api-builder)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.reddit)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "test-anon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.api-builder)
            (hsPkgs.reddit)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }