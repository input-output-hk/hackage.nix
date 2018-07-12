{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "directory-layout";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Declare, construct and verify directory layout";
        description = "Language to express directory layouts";
        buildType = "Simple";
      };
      components = {
        "directory-layout" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.QuickCheck
          ];
        };
      };
    }