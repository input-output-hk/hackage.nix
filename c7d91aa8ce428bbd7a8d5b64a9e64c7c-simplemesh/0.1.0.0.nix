{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simplemesh";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonascarpay@gmail.com";
        author = "Jonas Carpay";
        homepage = "https://github.com/jonascarpay/simplemesh#readme";
        url = "";
        synopsis = "Generators for primitive meshes";
        description = "Generators for primitive meshes";
        buildType = "Simple";
      };
      components = {
        "simplemesh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.linear
          ];
        };
      };
    }