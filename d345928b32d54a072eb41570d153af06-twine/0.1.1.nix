{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "twine";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jimmyjazz14@gmail.com";
        author = "James Sanders";
        homepage = "http://twine.james-sanders.com";
        url = "";
        synopsis = "very simple template language";
        description = "very simple template language";
        buildType = "Simple";
      };
      components = {
        "twine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
      };
    }