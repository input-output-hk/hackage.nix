{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "container-classes";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Generic classes for interacting with different container types";
        description = "Allow users of your library to choose which data\nstructure they want to use rather than\nconstraining them to whatever you chose at the\ntime.";
        buildType = "Simple";
      };
      components = {
        "container-classes" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }