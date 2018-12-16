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
        name = "wai-middleware-prometheus";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2015 Will Coster";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/prometheus-haskell";
      url = "";
      synopsis = "WAI middlware for exposing http://prometheus.io metrics.";
      description = "WAI middlware for exposing http://prometheus.io metrics.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.http-types)
          (hsPkgs.prometheus-client)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.prometheus-client)
          ];
        };
      };
    };
  }