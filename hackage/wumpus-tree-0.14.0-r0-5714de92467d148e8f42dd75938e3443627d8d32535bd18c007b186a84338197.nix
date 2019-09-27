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
      identifier = { name = "wumpus-tree"; version = "0.14.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\nNote - the demos now use font metrics. Font metrics for the\n\\\"Core 14\\\" PostScript fonts are distributed as @*.afm@ files\nwith GhostScript (AFM file version 2.0 for GhostScript 8.63) or\navailable from Adode (AFM file version 4.1). To run the demos\nproperly you will need one of these sets of metrics.\n\nAdobe Font techinal notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\n\n\\*\\* WARNING \\*\\* - the API is unstable and will change.\n\nChangelog:\n\nv0.13.0 to v0.14.0:\n\n* Updated to work with latest Wumpus libraries.\n\n\nv0.12.0 to v0.13.0:\n\n* Changed the specification of trees so that they are built in a\nmonad. The bind operation of the monad allows /anchors/ to be\nextracted from tree nodes so they can be annotated with\nsupplementary graphics. At the moment this is rather limited\nas Wumpus-Basic and Wumpus-Drawing do not offer much support\nfor anchors other than the basic type classes.\n\n* Changed the type of the rendering functions so they produce a\nTreeDrawing. This type is more suitable for building composite\npictures than the previous type TreePicture.\n\n* Also the rendering functions now take a start point for the\nroot node, again this should be more convenient for drawing\ncomposite pictures - see the demo which now draws all the\nexample trees on one page.\n\n* Internally the tree design is now more flexible - trees can be\ndesigned upwards or leftwards rightwards, rather than just\ndownwards; and edge drawing style is lifted out of the\nrendering to use a supplied combinator. Currently these\nfeatures are not exposed by the API, the API needs more\nthought (possibly warranting changes to Wumpus-Basic and\nWumpus-Drawing).\n\n\nv0.11.1 to v0.12.0:\n\n* Internal changes to track updates to Wumpus-Basic.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or (buildDepError "wumpus-core"))
          (hsPkgs."wumpus-basic" or (buildDepError "wumpus-basic"))
          (hsPkgs."wumpus-drawing" or (buildDepError "wumpus-drawing"))
          ];
        buildable = true;
        };
      };
    }