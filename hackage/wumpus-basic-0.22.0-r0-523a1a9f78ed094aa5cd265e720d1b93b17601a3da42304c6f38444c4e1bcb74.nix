let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-basic"; version = "0.22.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Basic objects and system code built on Wumpus-Core.";
      description = "\nKernel code for higher-level drawing built on Wumpus-Core. This\npackage provides font loader code (currently limited to AFM font\nfiles) and a various /drawing objects/ intended to be a\nhigher-level basis to make vector drawings than the primitives\n(paths, text labels) provided by Wumpus-Core.\n\n\\*\\* WARNING \\*\\* - this package is alpha grade and it is\nstrongly coupled to the package @Wumpus-Drawing@ which is\nsub-alpha grade. The packages are split as it is expected they\nwill have different development speeds - @Wumpus-Basic@ needs\npolishing and refinement; @Wumpus-Drawing@ simply needs a lot of\nwork to move its components from /proof-of-concept/ ideas to\nbeing readily usable.\n\n\nNOTE - the demos that were previously included are now in the\npackage @Wumpus-Drawing@.\n\n\nChangelog:\n\nv0.21.0 to v0.22.0:\n\n* Reverted argument order of @run@ functions they back to the\n@monadLib@ style (args * monadic_operation) rather than @MTL@\nstyle (monadic_operation * args). Typographically this seems\nbetter.\n\n* Removed module @Geometry.Paths@ it is superseded in\nWumpus-Drawing.\n\n* Added user state to PosObject and moved it into\n@Kernel.Drawing@.\n\n* Changed the enumeration @DrawStyle@ to @DrawMode@. Added\nanother enumeration @PathMode@.\n\n* Changed Chain so that first item in the chain is the start\npoint (previously the start point was iterated by the chain).\n\n* Removed @ConnectorProps@ from the @DrawingContext@ , they are\nnow used \\\"locally\\\" in Wumpus-Drawing.\n\n* Added more vector constructors to\n@Kernel.Objects.Displacement@.\n\n* Added extra methods to the @Decorate@ class for annotating\nSVG elements.\n\nv0.20.0 to v0.21.0:\n\n* The code from the @Kernel.Base.UserState@ module has been\nmoved to the module @Kernel.Drawing.Basis@.\n\n* Moved @Image@ and @Query@ from @Objects.Basis@ to new module\n@Objects.Image@. Moved @Chain@, @CtxPicture@ and\n@TraceDrawing@ into the new @Drawing@ folder.\n\n* Added @Wumpus.Basic.Kernel.Drawing.LocDrawing@ module.\n\n* Rationalized the combinators exported by the drawing objects\n@Image@, @LocImage@, @LocThetaImage@ and @Connector@.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or (buildDepError "wumpus-core"))
          ];
        };
      };
    }