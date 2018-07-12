{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bdo";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Update CSS in the browser without reloading the page.";
        description = "Update CSS in the browser without reloading the page.";
        buildType = "Simple";
      };
      components = {
        "bdo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.url
            hsPkgs.text
            hsPkgs.network
            hsPkgs.aeson
          ];
        };
        exes = {
          "bdo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.url
              hsPkgs.text
              hsPkgs.network
              hsPkgs.aeson
            ];
          };
        };
      };
    }