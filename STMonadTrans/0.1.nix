{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "STMonadTrans";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "josef.svenningsson@gmail.com";
        author = "Josef Svenningsson";
        homepage = "";
        url = "";
        synopsis = "A monad transformer version of the ST monad";
        description = "A monad transformer version of the ST monad";
        buildType = "Simple";
      };
      components = {
        STMonadTrans = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.array
            ]
            else [ hsPkgs.base ];
        };
      };
    }