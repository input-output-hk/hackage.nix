{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hwsl2-bytevector";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/hwsl2-haskell-bytevector";
        url = "";
        synopsis = "A hashed byte-vector based on algebraic hashes and finger trees";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hwsl2-bytevector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hwsl2
            hsPkgs.fingertree
            hsPkgs.bytestring
          ];
        };
      };
    }