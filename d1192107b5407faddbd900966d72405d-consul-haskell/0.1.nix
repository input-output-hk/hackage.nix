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
        name = "consul-haskell";
        version = "0.1";
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
      "consul-haskell" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.transformers)
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
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }