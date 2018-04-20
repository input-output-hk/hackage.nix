{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tao-example";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jason Shipman";
        author = "Jason Shipman";
        homepage = "https://github.com/jship/tao#readme";
        url = "";
        synopsis = "Example usage of the tao package.";
        description = "Example usage of type-level assertions using tao.";
        buildType = "Simple";
      };
      components = {
        tao-example = {
          depends  = [
            hsPkgs.base
            hsPkgs.tao
          ];
        };
      };
    }