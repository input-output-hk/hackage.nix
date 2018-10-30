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
        name = "planb-token-introspection";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/planb-token-introspection#readme";
      url = "";
      synopsis = "Token Introspection for PlanB";
      description = "This package provides token introspection functionality\nfor the PlanB token provider.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "access-token-provider-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.planb-token-introspection)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.safe-exceptions)
            (hsPkgs.random)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.unliftio-core)
            (hsPkgs.safe-exceptions)
            (hsPkgs.th-format)
          ];
        };
      };
    };
  }