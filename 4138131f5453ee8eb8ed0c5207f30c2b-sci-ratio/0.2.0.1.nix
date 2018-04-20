{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sci-ratio";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Phil Ruffwind";
        maintainer = "rf@rufflewind.com";
        author = "Phil Ruffwind";
        homepage = "https://github.com/Rufflewind/sci-ratio";
        url = "";
        synopsis = "Rational numbers in scientific notation.";
        description = "Parsing and pretty-printing of exact rational numbers with arbitrarily large\nexponents.";
        buildType = "Simple";
      };
      components = {
        sci-ratio = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
          ];
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.base
              hsPkgs.sci-ratio
            ];
          };
        };
      };
    }