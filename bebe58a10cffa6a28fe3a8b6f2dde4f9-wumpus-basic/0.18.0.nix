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
        name = "wumpus-basic";
        version = "0.18.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Basic objects and system code built on Wumpus-Core.";
      description = "\nKernel code for higher-level drawing built on Wumpus-Core. This\npackage provides font loader code (currently limited to AFM font\nfiles) and a various /drawing objects/ intended to be a\nhigher-level basis to make vector drawings than the primitives\n(paths, text labels) provided by Wumpus-Core.\n\n\\*\\* WARNING \\*\\* - this package is alpha grade and it is\nstrongly coupled to the package @Wumpus-Drawing@ which is\nsub-alpha grade. The packages are split as it is expected they\nwill have different development speeds - @Wumpus-Basic@ needs\npolishing and refinement; @Wumpus-Drawing@ simply needs a lot of\nwork to move its components from /proof-of-concept/ ideas to\nbeing readily usable.\n\n\nNOTE - the demos that were previously included are now in the\npackage @Wumpus-Drawing@.\n\n\nChangelog:\n\nv0.17.0 to v0.18.0:\n\n* Major change - removed @ContextFun@ from @Kernel.Base@. Now\nthe drawing objects (Image, LocImage, Connector...) are\nnewtype wrapped Reader-Writer monads rather than aliases to\none of the arity family of ContextFuns. Being newtypes gives\na lot better opportunities for overloading.\n\n* Changed Displacement API - it is smaller, and the function\nnaming is more uniform.\n\n* Changed @DrawingPimitives@ to use @DrawStyle@.\n\n* Moved vertices generating functions from @Geometry.Path@ to\n@Geometry.Vertices@.\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
        ];
      };
    };
  }