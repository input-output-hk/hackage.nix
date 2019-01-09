{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-http2-client"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/servant-http2-client#readme";
      url = "";
      synopsis = "Generate HTTP2 clients from Servant API descriptions.";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/servant-http2-client#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.http2)
          (hsPkgs.http2-client)
          (hsPkgs.mtl)
          (hsPkgs.servant-client-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "servant-http2-client-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.exceptions)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.http2)
            (hsPkgs.http2-client)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.servant-client-core)
            (hsPkgs.servant-http2-client)
            (hsPkgs.text)
            (hsPkgs.tls)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }