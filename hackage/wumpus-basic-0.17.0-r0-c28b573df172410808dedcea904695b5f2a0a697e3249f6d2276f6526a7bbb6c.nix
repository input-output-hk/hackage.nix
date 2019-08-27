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
      identifier = { name = "wumpus-basic"; version = "0.17.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Basic objects and system code built on Wumpus-Core.";
      description = "\nKernel code for higher-level drawing built on Wumpus-Core.\nThis package provides font loader code (limited to AFM font\nfiles) and a various /drawing objects/ intended to be a\nhigher-level basis to make vector drawings than the primitives\n(paths, text labels) provided by Wumpus-Core.\n\n\\*\\* WARNING \\*\\* - this package is alpha grade and it is\nstrongly coupled to the package @Wumpus-Drawing@ which is\nsub-alpha grade. The packages are split as it is expected they\nwill have different development speeds - @Wumpus-Basic@ needs\npolishing and refinement; @Wumpus-Drawing@ simply needs a lot of\nwork to move its components from /proof-of-concept/ ideas to\nbeing readily usable.\n\n\nNOTE - the demos that were previously included are now in the\npackage @Wumpus-Drawing@.\n\n\nChangelog:\n\nv0.16.0 to v0.17.0:\n\n* Changed representation of ContextFuns - context funs are no\nlonger an arity family of newtypes. The new representation\nis simpler, but some of the opportunities for overloading\nhave been lost.\n\n* Substantial round of renaming for the @DrawingContext@ types\nan query and update functions.\n\n* Re-worked the font metrics and font loader modules. The new\nnames should be more systematic. Removed the need for the\nGhostScript font modules to match PostScript names to\nGhostScript font files.\n\n* Superceded the PointSupplyM class by adding snapping grid\nscaling to the DrawingContext.\n\n* Removed @ScalingContext@ module.\n\n* Made text colour a distinct property in the DrawingContext.\nText is now drawn with the text colour rather than the stroke\ncolour.\n\n* Added FontLoadLog to the DrawingContext - this allows access\nto the errors recorded during font loading.\n\nv0.15.0 to v0.16.0:\n\n* Moved the Geometry modules from Wumpus-Drawing into\nWumpus-Basic.\n\n* Re-worked the @CtxPicture@ API, although the current naming\nscheme is not satisfactory.\n\n* Added extra Anchor classes.\n\n* Added @PosImage@ object - this is a rectangle-framed object\nthat can be drawn from any of its corners or its center.\n\n* Added @CF3@, an arity three /ContextFunction/.\n\n* Added @Displacement@ module. This defines the @PointDisplace@\ntype and provides a library of @PointDisplace@ functions.\nNote - some of the new functions have taken names previously\nused for anchor projection functions (@northwards@,\n@southwards@, etc.), anchor projections are now build with the\nfunction @projectAnchor@.\n\n* Added the property @descender@ to the font metrics.\n\n* Split drawing primitives from type in @Objects.Graphic@,\ndrawing primitives are now in the module\n@Objects.DrawingPrimitives@.\n\nv0.14.0 to v0.15.0:\n\n* Split previous @Wumpus-Basic@ package into two packages:\n@Wumpus-Basic@ and @Wumpus-Drawing@. This is a pratical move\nto separate the developed (although not yet polished) @Kernel@\nand @FontLoader@ code from the prototypical @Drawing@ code.\n\n* Renamed the @Drawing@ object to @CtxPicture@. Although\n@CtxPicture@ is a less pleasant name, it should be less\nconfusing. A @CtxPicture@ is the essentially the @Picture@\ntype from Wumpus-Core with an implicit context -\n@ContextPicture@ is simply too long and @CtxPicture@ is\nalmost jibberish but the previous unrelated name @Drawing@\nwas not helpful.\n\n* @Kernel.Base.ScalingContext@ has been simplified.\nScalingContexts are no longer manipulated via a custom Reader\nmonad or transformer as the type signatures were too unwieldy.\n\n* Added @TextMargin@ to the @DrawingContext@ - Wumpus-Drawing\ncan now calculate more appealing bounding boxes for text.\n";
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