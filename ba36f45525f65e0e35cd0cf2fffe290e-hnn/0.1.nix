{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hnn";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
        homepage = "";
        url = "";
        synopsis = "A minimal Haskell Neural Network Library";
        description = "hnn provides minimal types and functions to create, train and use feed forward neural networks <http://www.haskell.org/haskellwiki/HNN>";
        buildType = "Simple";
      };
      components = {
        "hnn" = {
          depends  = [
            hsPkgs.uvector
            hsPkgs.base
          ];
        };
      };
    }