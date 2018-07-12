{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      all = false;
      server = true;
      test1 = false;
      chalkmark = false;
      simple = false;
      cbbe1 = false;
      example = false;
      tutorial = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chalkboard";
          version = "1.9.0.15";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 University of Kansas";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill, Kevin Matlage";
        homepage = "http://www.ittc.ku.edu/csdl/fpg/ChalkBoard";
        url = "";
        synopsis = "Combinators for building and processing 2D images.";
        description = "ChalkBoard is a Haskell hosted Domain Specific Language (DSL) for image generation and processing.\nThe basic structure is a Chalk Board, a two-dimensional canvas of values, typically colors.\nChalkBoard provides the usual image processing functions (masking, overlaying, function mapping,\ncropping, warping, rotating) as well as a few more unusual ones.\nImages can be imported into ChalkBoard, as first-class color chalk boards.\nChalkBoard also provides combinators for drawing shapes on directly on boards.\nThe system is based loosely on Pan, but the principal image type, a Board, is abstract.";
        buildType = "Simple";
      };
      components = {
        "chalkboard" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.data-reify
            hsPkgs.containers
            hsPkgs.GLUT
            hsPkgs.OpenGLRaw
            hsPkgs.Codec-Image-DevIL
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.process
          ];
        };
        exes = {
          "chalkboard-server-1_9_0_15" = {};
          "chalkboard-tests-test1" = {};
          "chalkboard-tests-chalkmark" = {};
          "chalkboard-tests-simple" = {
            depends  = pkgs.lib.optional (!(_flags.all || _flags.simple)) hsPkgs.base;
          };
          "chalkboard-tests-cbbe1" = {};
          "chalkboard-examples-example" = {};
          "chalkboard-tutorial-basic" = {};
        };
      };
    }