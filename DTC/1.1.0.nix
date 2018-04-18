{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DTC";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
        author = "Daniel Diaz";
        homepage = "http://ddiaz.asofilak.es/packages/DTC";
        url = "";
        synopsis = "Data To Class transformation.";
        description = "Transform data declarations to class definitions.\n\nThe way is explained in /Data Declarations to Class Definitions/ (see the homepage).\n\nChanges from last version:\n\n* Now @DTC@ uses @haskell-src-exts@ instead of @haskell-src@.\n\n* New module: @DataInfo@.\n\n* The @Maybe@ example included (in \"Language.Haskell.DTC.Class\" module).";
        buildType = "Simple";
      };
      components = {
        DTC = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
          ];
        };
      };
    }