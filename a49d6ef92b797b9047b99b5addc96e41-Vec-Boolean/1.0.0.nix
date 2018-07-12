{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "Vec-Boolean";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tobias Bexelius";
        maintainer = "Tobias Bexelius";
        author = "Tobias Bexelius";
        homepage = "";
        url = "";
        synopsis = "Provides Boolean instances for the Vec package";
        description = "This package adds instances for the classes IfB and EqB in the Boolean package for the fixed length list data type in the Vec package.\nThese intances are useful for example when using the GPipe package.";
        buildType = "Simple";
      };
      components = {
        "Vec-Boolean" = {
          depends  = [
            hsPkgs.Boolean
            hsPkgs.Vec
            hsPkgs.base
          ];
        };
      };
    }