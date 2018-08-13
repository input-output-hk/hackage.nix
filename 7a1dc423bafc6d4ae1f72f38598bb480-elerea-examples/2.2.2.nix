{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "elerea-examples";
        version = "2.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Example applications for Elerea";
      description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* bounce: an example for creating dynamic collections of signals;\nleft click to create balls, drag existing balls with left button\nto propel them and drag with right to select balls for deletion\n(upon release);\n\n* chase: a minimal example that demonstrates reactivity and mutually\nrecursive signals;\n\n* breakout: a not too fancy breakout clone; you can simply use the\nmouse to move the paddle.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elerea-bounce" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elerea)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
        "elerea-breakout" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elerea)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
        "elerea-chase" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elerea)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
      };
    };
  }