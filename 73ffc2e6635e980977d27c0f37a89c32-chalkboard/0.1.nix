{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chalkboard";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Andy Gill";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://ittc.ku.edu/~andygill/chalkboard.php";
        url = "";
        synopsis = "Combinators for building and processing 2D images.";
        description = "Chalkboard is a Haskell hosted Domain Specific Language (DSL) for image generation and processing.\nThe basic structure is a chalk board, a two-dimensional canvas of values, typically colors.\nChalkboard provides the usual image processing functions (masking, overlaying, function mapping,\ncropping, warping, rotating) as well as a few more unusual ones.\nImages can be imported into Chalkboard, as first-class color chalk boards.\nChalkboard also provides combinators for drawing shapes on directly on boards.\nThe system is based loosely on PAN, but the principal image type, a Board, is abstract.";
        buildType = "Simple";
      };
      components = {
        chalkboard = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
        exes = {
          chalkboard-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
            ];
          };
        };
      };
    }