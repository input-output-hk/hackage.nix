{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hampp";
          version = "0.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Haskell macro preprocessor";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          hampp = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.preprocessor-tools
            ];
          };
        };
      };
    }