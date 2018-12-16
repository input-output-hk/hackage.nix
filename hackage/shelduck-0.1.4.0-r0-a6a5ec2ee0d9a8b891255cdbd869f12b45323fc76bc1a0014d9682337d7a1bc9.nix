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
        name = "shelduck";
        version = "0.1.4.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Spock)
          (hsPkgs.async)
          (hsPkgs.text)
          (hsPkgs.lens-aeson)
          (hsPkgs.lens)
          (hsPkgs.stm)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.hastache)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.shelly)
          (hsPkgs.uuid)
          (hsPkgs.time)
        ];
      };
      exes = {
        "shelduck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shelduck)
            (hsPkgs.Spock)
            (hsPkgs.async)
            (hsPkgs.text)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.stm)
            (hsPkgs.wreq)
            (hsPkgs.aeson)
            (hsPkgs.hastache)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.shelly)
            (hsPkgs.uuid)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.shelduck)
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