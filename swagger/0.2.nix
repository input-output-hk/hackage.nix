{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "swagger";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2014 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "";
        url = "";
        synopsis = "Implementation of swagger data model";
        description = "Implementation of Swagger specification version 1.2 as defined in\n<https://github.com/wordnik/swagger-spec/blob/master/versions/1.2.md>";
        buildType = "Simple";
      };
      components = {
        swagger = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.swagger
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }