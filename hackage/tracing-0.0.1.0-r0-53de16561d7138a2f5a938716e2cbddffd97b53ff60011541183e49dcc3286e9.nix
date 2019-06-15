{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tracing"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matthieu Monsch";
      maintainer = "matthieu.monsch@gmail.com";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/tracing";
      url = "";
      synopsis = "Distributed tracing";
      description = "https://github.com/mtth/tracing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.ip)
          (hsPkgs.mtl)
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