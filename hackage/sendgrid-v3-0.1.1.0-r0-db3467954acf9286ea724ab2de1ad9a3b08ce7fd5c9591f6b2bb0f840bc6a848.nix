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
        name = "sendgrid-v3";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "buesing.marcel@googlemail.com";
      author = "marcelbuesing";
      homepage = "https://github.com/marcelbuesing/sendgrid-v3";
      url = "";
      synopsis = "Sendgrid v3 API library";
      description = "SendGrid v3 Mail API client";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.wreq)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.semigroups)
            (hsPkgs.sendgrid-v3)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }