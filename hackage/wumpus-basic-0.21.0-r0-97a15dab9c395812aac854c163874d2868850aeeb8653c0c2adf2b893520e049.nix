{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-basic"; version = "0.21.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Basic objects and system code built on Wumpus-Core.";
      description = "\nKernel code for higher-level drawing built on Wumpus-Core. This\npackage provides font loader code (currently limited to AFM font\nfiles) and a various /drawing objects/ intended to be a\nhigher-level basis to make vector drawings than the primitives\n(paths, text labels) provided by Wumpus-Core.\n\n\\*\\* WARNING \\*\\* - this package is alpha grade and it is\nstrongly coupled to the package @Wumpus-Drawing@ which is\nsub-alpha grade. The packages are split as it is expected they\nwill have different development speeds - @Wumpus-Basic@ needs\npolishing and refinement; @Wumpus-Drawing@ simply needs a lot of\nwork to move its components from /proof-of-concept/ ideas to\nbeing readily usable.\n\n\nNOTE - the demos that were previously included are now in the\npackage @Wumpus-Drawing@.\n\n\nChangelog:\n\nv0.20.0 to v0.21.0:\n\n* The code from the @Kernel.Base.UserState@ module has been\nmoved to the module @Kernel.Drawing.Basis@.\n\n* Moved @Image@ and @Query@ from @Objects.Basis@ to new module\n@Objects.Image@. Moved @Chain@, @CtxPicture@ and\n@TraceDrawing@ into the new @Drawing@ folder.\n\n* Added @Wumpus.Basic.Kernel.Drawing.LocDrawing@ module.\n\n* Rationalized the combinators exported by the drawing objects\n@Image@, @LocImage@, @LocThetaImage@ and @Connector@.\n\nv0.18.0 to v0.20.0:\n\n* Added text advance-vector calculations to @QueryDC@ -\npreviously they were in Wumpus-Drawing.\n\n* Changed argument order of @run@ functions to follow the usual\nstyle - monadic action first and then dependent parameters\n(initial state, reader environment etc.).\n\n* Changed representation of Chains to a monadic type with an\nexplicit operation for next position.\n\n* Removed @PrimW@ type - pairs are now used instead.\n\n* Removed transformer version of @TraceDrawing@. All operations\nin TraceDrawing are now specialized to work only on the\n@TraceDrawing@ type. Added @UserState@ to TraceDrawing and\nother drawing monads to compensate for the loss of\nexpressiveness.\n\n* Changed the internals of @AdvObject@ and @PosObject@ so they\nare more idiomatic - both are now essentially reader-writer\nmonads. Added PosObject functions for text primitives (moved\nfrom Wumpus-Drawing).\n\n* Changed the @obliterate@ method of the @Decorate@ class.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or (errorHandler.buildDepError "wumpus-core"))
        ];
        buildable = true;
      };
    };
  }