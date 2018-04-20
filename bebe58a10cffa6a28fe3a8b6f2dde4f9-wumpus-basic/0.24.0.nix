{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-basic";
          version = "0.24.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Basic objects and system code built on Wumpus-Core.";
        description = "\nKernel code for higher-level drawing built on Wumpus-Core. This\npackage provides font loader code (currently limited to AFM font\nfiles) and a various /drawing objects/ intended to be a\nhigher-level basis to make vector drawings than the primitives\n(paths, text labels) provided by Wumpus-Core.\n\n\\*\\* WARNING \\*\\* - this package is alpha grade and it is\nstrongly coupled to the package @Wumpus-Drawing@ which is\nsub-alpha grade. The packages are split as it is expected they\nwill have different development speeds - @Wumpus-Basic@ needs\npolishing and refinement; @Wumpus-Drawing@ simply needs a lot of\nwork to move its components from /proof-of-concept/ ideas to\nbeing readily usable.\n\n\nNOTE - the demos that were previously included are now in the\npackage @Wumpus-Drawing@.\n\n\nChangelog:\n\nv0.23.0 to v0.24.0:\n\n* Changes to type funs to work with GHC 7.4.\n\n* Removed FormatCombinators module.\n\nv0.22.0 to v0.23.0:\n\n* Re-worked the Chain module and API.\n\n* Replaced @ZDeco@ enumeration with @ZOrder@.\n\n* Removed the @Basic.Geometry@ modules, they are superseded in\nWumpus-Drawing. Some of the equivalent functionality is now\ninternal to the respective modules in Wumpus-Drawing - Wumpus\nhas scaled back the amount of /geometric/ types and operations\nit wants to expose.\n\n* Renamed the @PlacedTrail@ object to @AnaTrail@ - the prefix\nvector is considered an /anacrusis/. Tidied up the API of the\n@Trail@ module.\n\n* Moved @bezierArcPoints@ and @BezierMinorArc@ from\n@Basic.Geometry@ and marked the @Basic.Geometry@ code as\nobsolute.\n\nv0.21.0 to v0.22.0:\n\n* Reverted argument order of @run@ functions they back to the\n@monadLib@ style (args * monadic_operation) rather than @MTL@\nstyle (monadic_operation * args). Typographically this seems\nbetter.\n\n* Removed module @Geometry.Paths@ it is superseded in\nWumpus-Drawing.\n\n* Added user state to PosObject and moved it into\n@Kernel.Drawing@.\n\n* Changed the enumeration @DrawStyle@ to @DrawMode@. Added\nanother enumeration @PathMode@.\n\n* Changed Chain so that first item in the chain is the start\npoint (previously the start point was iterated by the chain).\n\n* Removed @ConnectorProps@ from the @DrawingContext@ , they are\nnow used \\\"locally\\\" in Wumpus-Drawing.\n\n* Added more vector constructors to\n@Kernel.Objects.Displacement@.\n\n* Added extra methods to the @Decorate@ class for annotating\nSVG elements.\n\nv0.20.0 to v0.21.0:\n\n* The code from the @Kernel.Base.UserState@ module has been\nmoved to the module @Kernel.Drawing.Basis@.\n\n* Moved @Image@ and @Query@ from @Objects.Basis@ to new module\n@Objects.Image@. Moved @Chain@, @CtxPicture@ and\n@TraceDrawing@ into the new @Drawing@ folder.\n\n* Added @Wumpus.Basic.Kernel.Drawing.LocDrawing@ module.\n\n* Rationalized the combinators exported by the drawing objects\n@Image@, @LocImage@, @LocThetaImage@ and @Connector@.\n\n";
        buildType = "Simple";
      };
      components = {
        wumpus-basic = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.vector-space
            hsPkgs.wumpus-core
          ];
        };
      };
    }