{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "mono-foldable";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "http://github.com/JohnLato/mono-foldable";
        url = "";
        synopsis = "Folds for monomorphic containers";
        description = "Like Data.Foldable, but works with ByteStrings too";
        buildType = "Simple";
      };
      components = {
        mono-foldable = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.vector
          ];
        };
      };
    }