{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.21";
      identifier = {
        name = "slack-web";
        version = "0.2.0.5";
      };
      license = "MIT";
      copyright = "2017 Juan Pedro Villa Isaza";
      maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
      author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
      homepage = "https://github.com/jpvillaisaza/slack-web";
      url = "";
      synopsis = "Bindings for the Slack web API";
      description = "Haskell bindings for the Slack web API.";
      buildType = "Simple";
    };
    components = {
      "slack-web" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-client-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.errors)
          (hsPkgs.megaparsec)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.errors)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.megaparsec)
          ];
        };
      };
    };
  }