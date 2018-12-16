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
        name = "http2-client";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-client";
      url = "";
      synopsis = "A native HTTP2 client library.";
      description = "Please read the README.md at the homepage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.http2)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.tls)
        ];
      };
      exes = {
        "http2-client-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.http2)
            (hsPkgs.http2-client)
            (hsPkgs.optparse-applicative)
            (hsPkgs.time)
            (hsPkgs.tls)
          ];
        };
      };
      tests = {
        "http2-client-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.http2-client)
          ];
        };
      };
    };
  }