{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haspell";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "joel@otte.rs";
        author = "Joel Taylor";
        homepage = "https://github.com/otters/haspell";
        url = "";
        synopsis = "Haskell bindings to aspell";
        description = "";
        buildType = "Simple";
      };
      components = {
        haspell = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.aspell ];
        };
      };
    }