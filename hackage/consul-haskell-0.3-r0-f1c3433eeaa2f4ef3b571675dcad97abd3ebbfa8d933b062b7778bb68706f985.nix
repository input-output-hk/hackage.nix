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
        name = "consul-haskell";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sseverance@alphaheavy.com";
      author = "Steve Severance";
      homepage = "https://github.com/alphaHeavy/consul-haskell";
      url = "";
      synopsis = "A consul client for Haskell";
      description = "A consul client for Haskell\n\nRequires consul 0.5 or later.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.either)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "consul-haskell-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.consul-haskell)
            (hsPkgs.http-client)
            (hsPkgs.network)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }