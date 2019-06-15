{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tracing"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matthieu Monsch";
      maintainer = "mtth@apache.org";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/tracing";
      url = "";
      synopsis = "Distributed tracing";
      description = "An OpenTracing-compliant, simple, and extensible distributed tracing library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.ip)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          ];
        };
      exes = {
        "zipkin-example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ip)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.tracing)
            (hsPkgs.unliftio)
            ];
          };
        };
      tests = {
        "tracing-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.tracing)
            (hsPkgs.unliftio)
            ];
          };
        };
      };
    }