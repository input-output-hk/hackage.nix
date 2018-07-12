{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "svm";
          version = "1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Andrew Dougherty";
        author = "Andrew Dougherty";
        homepage = "http://github.com/andrewdougherty/svm";
        url = "";
        synopsis = "A support vector machine written in Haskell";
        description = "svm is a library which implements least squares support\nvector regression.  It includes several common kernel\nfunctions.";
        buildType = "Simple";
      };
      components = {
        "svm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }