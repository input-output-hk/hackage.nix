{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity";
          version = "0.3.0.3";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity typeclass";
        description = "Note: There are companion instance packages for this library:\n\n* <https://hackage.haskell.org/package/validity-text validity-text>\n\n* <https://hackage.haskell.org/package/validity-containers validity-containers>";
        buildType = "Simple";
      };
      components = {
        validity = {
          depends  = [ hsPkgs.base ];
        };
      };
    }