{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambda-options";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "https://github.com/thomaseding/lambda-options";
        url = "";
        synopsis = "A modern command-line parser for Haskell.";
        description = "A modern command-line parser for Haskell.";
        buildType = "Simple";
      };
      components = {
        lambda-options = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }