{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sharedio";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Niklas Hambüchen (mail@nh2.me)";
        author = "Niklas Hambüchen (mail@nh2.me), John Lato";
        homepage = "https://github.com/nh2/haskell-sharedio";
        url = "";
        synopsis = "Bundles shared calls to IO functions to perform them only once";
        description = "";
        buildType = "Simple";
      };
      components = {
        sharedio = {
          depends  = [ hsPkgs.base ];
        };
      };
    }