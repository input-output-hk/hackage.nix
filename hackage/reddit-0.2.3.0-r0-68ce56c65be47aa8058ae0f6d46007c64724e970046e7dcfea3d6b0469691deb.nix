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
        version = "0.2.3.0";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) Fraser Murray, 2013-2018";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "https://github.com/intolerable/reddit#readme";
      url = "";
      synopsis = "Library for interfacing with Reddit's API";
      description = "A library for interfacing with Reddit''s API in Haskell. Handles logins, rate-limiting and converting to and from JSON responses. Supports most user-facing Reddit API functions, as well as some moderator endpoints. Check out the readme at <https://github.com/intolerable/reddit>.\nContributions are welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.api-builder)
          (hsPkgs.base)
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
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.api-builder)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.reddit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "test-anon" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.api-builder)
            (hsPkgs.base)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.reddit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "test-io" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.api-builder)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.reddit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }