{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-basic";
          version = "0.15.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Basic objects and system code built on Wumpus-Core.";
        description = "\nKernel code for higher-level drawing built on Wumpus-Core.\nThis package provides font loader code (limited to AFM font\nfiles) and a various /drawing objects/ intended to be a\nhigher-level basis to make vector drawings than the primitives\n(paths, text labels) provided by Wumpus-Core.\n\n\\*\\* WARNING \\*\\* - this package is alpha grade and it is\nstrongly coupled to the package @Wumpus-Drawing@ which is\nsub-alpha grade. The packages are split as it is expected they\nwill have different development speeds - @Wumpus-Basic@ needs\npolishing and refinement; @Wumpus-Drawing@ simply needs a lot of\nwork to move its components from /proof-of-concept/ ideas to\nbeing readily usable.\n\n\nNOTE - the demos that were previously included are now in the\npackage @Wumpus-Drawing@.\n\n\nChangelog:\n\nv0.14.0 to v0.15.0:\n\n* Split previous @Wumpus-Basic@ package into two packages:\n@Wumpus-Basic@ and @Wumpus-Drawing@. This is a pratical move\nto separate the developed (although not yet polished) @Kernel@\nand @FontLoader@ code from the prototypical @Drawing@ code.\n\n* Renamed the @Drawing@ object to @CtxPicture@. Although\n@CtxPicture@ is a less pleasant name, it should be less\nconfusing. A @CtxPicture@ is the essentially the @Picture@\ntype from Wumpus-Core with an implicit context -\n@ContextPicture@ is simply too long and @CtxPicture@ is\nalmost jibberish but the previous unrelated name @Drawing@\nwas not helpful.\n\n* @Kernel.Base.ScalingContext@ has been simplified.\nScalingContexts are no longer manipulated via a custom Reader\nmonad or transformer as the type signatures were too unwieldy.\n\n* Added @TextMargin@ to the @DrawingContext@ - Wumpus-Drawing\ncan now calculate more appealing bounding boxes for text.\n";
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