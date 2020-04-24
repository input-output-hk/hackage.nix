{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-tree"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape.\n\n\nChangelog:\n\n0.4.0 to 0.5.0:\n\n* Updated to track changes in Wumpus-Basic. Nothing new.\n\n0.3.0 to 0.4.0:\n\n* Updated to track changes in Wumpus-Basic. Nothing new.\n\n0.2.0 to 0.3.0:\n\n* Updated to track changes in Wumpus-Basic. No new\nfunctionality.\n\n0.1.0 to 0.2.0:\n\n* Changed internals to use ConsDrawing monad as Wumpus-Basic\nhas changed.\n\n* Internal change to use AGraphic rather than MGraphicF\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or ((hsPkgs.pkgs-errors).buildDepError "wumpus-core"))
          (hsPkgs."wumpus-basic" or ((hsPkgs.pkgs-errors).buildDepError "wumpus-basic"))
          ];
        buildable = true;
        };
      };
    }