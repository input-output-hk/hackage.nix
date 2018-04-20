{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "List";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yairchu@gmail.com";
        author = "Yair Chuchem";
        homepage = "http://github.com/yairchu/generator/tree";
        url = "";
        synopsis = "List monad transformer and class";
        description = "A List monad transformer and a List class.\nWith standard list operations for Lists";
        buildType = "Simple";
      };
      components = {
        List = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }