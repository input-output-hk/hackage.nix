{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "web-output";
          version = "0.4.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "f.occhipinti@gmail.com";
        author = "danse";
        homepage = "https://github.com/danse/web-output";
        url = "";
        synopsis = "Library to present content to an user via their browser";
        description = "Library to present content to an user via their browser";
        buildType = "Simple";
      };
      components = {
        web-output = {
          depends  = [
            hsPkgs.base
            hsPkgs.temporary
            hsPkgs.open-browser
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.temporary
              hsPkgs.open-browser
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
            ];
          };
        };
      };
    }