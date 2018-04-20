{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "present";
          version = "4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/present";
        url = "";
        synopsis = "Make presentations for data types.";
        description = "Make presentations for data types.";
        buildType = "Simple";
      };
      components = {
        present = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }