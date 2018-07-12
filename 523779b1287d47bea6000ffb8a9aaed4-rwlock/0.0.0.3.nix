{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rwlock";
          version = "0.0.0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/rwlock";
        url = "";
        synopsis = "Multiple-read / single-write locks";
        description = "A simple implementation of a multiple-reader / single-writer\nlock, using STM.";
        buildType = "Simple";
      };
      components = {
        "rwlock" = {
          depends  = [
            hsPkgs.monad-loops-stm
            hsPkgs.stm
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
      };
    }