{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "KiCS";
          version = "0.8.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Bernd Braßel";
        author = "Bernd Braßel";
        homepage = "http://curry-language.org";
        url = "";
        synopsis = "A compiler from Curry to Haskell";
        description = "This package builds the Curry to Haskell compiler.\nNote, that you need a functional curry module\n\"Prelude.curry\" to get started.\nThe standard version of that file is contained\nin the package KiCS-libraries.";
        buildType = "Simple";
      };
      components = {
        "KiCS" = {
          depends  = [ hsPkgs.syb ];
        };
        exes = {
          "kics" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.old-time
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.curry-base
            ];
          };
        };
      };
    }