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
        name = "lightning-haskell";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Connor Moreside";
      maintainer = "connor@moresi.de";
      author = "Connor Moreside";
      homepage = "https://github.com/cmoresid/lightning-haskell#readme";
      url = "";
      synopsis = "Haskell client for lightning-viz REST API";
      description = "A Haskell client for lightning-viz server. <http://lightning-viz.org/>";
      buildType = "Simple";
    };
    components = {
      "lightning-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.api-builder)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lightning-haskell)
            (hsPkgs.aeson)
            (hsPkgs.api-builder)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "test-integration" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lightning-haskell)
            (hsPkgs.aeson)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.api-builder)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }