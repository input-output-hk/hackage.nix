{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "enumerator-fd";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/enumerator/";
        url = "";
        synopsis = "Enumerator instances for monads-fd classes";
        description = "";
        buildType = "Simple";
      };
      components = {
        enumerator-fd = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.enumerator
          ];
        };
      };
    }