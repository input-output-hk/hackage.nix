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
        name = "paypal-adaptive-hoops";
        version = "0.13.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@housejeffries.com";
      author = "Ian Grant Jeffries";
      homepage = "https://github.com/fanjam/paypal-adaptive-hoops";
      url = "";
      synopsis = "Client for a limited part of PayPal's Adaptive Payments API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "paypal-adaptive-hoops" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.paypal-adaptive-hoops)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "local" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.paypal-adaptive-hoops)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "remote" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.paypal-adaptive-hoops)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }