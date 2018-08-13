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
        name = "scalp-webhooks";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "";
      url = "";
      synopsis = "Test webhooks locally";
      description = "Opinionated tool for QAing webhooks on remote services using ngrok";
      buildType = "Simple";
    };
    components = {
      "scalp-webhooks" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Spock)
          (hsPkgs.async)
          (hsPkgs.text)
          (hsPkgs.lens-aeson)
          (hsPkgs.lens)
          (hsPkgs.stm)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.rainbow)
          (hsPkgs.hastache)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.shelly)
        ];
      };
      exes = {
        "scalpel" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scalp-webhooks)
            (hsPkgs.Spock)
            (hsPkgs.async)
            (hsPkgs.text)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.stm)
            (hsPkgs.wreq)
            (hsPkgs.aeson)
            (hsPkgs.rainbow)
            (hsPkgs.hastache)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.shelly)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.scalp-webhooks)
            (hsPkgs.regex-compat)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.stm)
            (hsPkgs.wreq)
          ];
        };
      };
    };
  }