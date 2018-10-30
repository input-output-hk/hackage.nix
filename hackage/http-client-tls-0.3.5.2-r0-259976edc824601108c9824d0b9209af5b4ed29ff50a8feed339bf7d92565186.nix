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
        name = "http-client-tls";
        version = "0.3.5.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "http-client backend using the connection package and tls library";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.connection)
          (hsPkgs.network)
          (hsPkgs.tls)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.exceptions)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.network-uri)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.connection)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gauge)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
          ];
        };
      };
    };
  }