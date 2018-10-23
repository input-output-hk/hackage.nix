{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "vect";
        version = "0.4.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "A low-dimensional linear algebra library, tailored to computer graphics.";
      description = "A low-dimensional (2, 3 and 4) linear algebra library,\nwith lots of useful functions. Intended usage is primarily\ncomputer graphics (basic OpenGL support is included as a separate package).\nProjective 4 dimensional operations, as used in eg.\nOpenGL, are also supported.\nThe base field is either Float or Double.";
      buildType = "Custom";
    };
    components = {
      "vect" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }