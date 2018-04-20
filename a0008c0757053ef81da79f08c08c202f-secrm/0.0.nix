{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "secrm";
          version = "0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Jon Slenk <slenk.jon@gmail.com>";
        author = "Jon Slenk";
        homepage = "";
        url = "";
        synopsis = "Example of writing \"secure\" file removal in Haskell rather than C.";
        description = "Writes to target file multiple times with random data, then erases it.";
        buildType = "Simple";
      };
      components = {
        exes = {
          secrm = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
            ];
          };
        };
      };
    }