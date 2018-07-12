{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sendgrid-v3";
          version = "0.1.0.0";
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
        "sendgrid-v3" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.wreq
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.semigroups
              hsPkgs.sendgrid-v3
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
            ];
          };
        };
      };
    }