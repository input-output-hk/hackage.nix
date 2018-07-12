{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-tree";
          version = "0.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Drawing trees";
        description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\n\\*\\* WARNING \\*\\* - the API is unstable and will change.\n\nChangelog:\n\n0.7.0 to 0.8.0:\n\n* Changed drawTreePicture to use the @ScalingContext@ datatype\nfrom Wumpus.Basic. The type @ScaleFactors@ is now a type\nsynonym for @SalingContext@ operation on all Doubles.\n\n* Added an alternative drawing style /family tree/.\n\n0.6.0 to 0.7.0:\n\n* More example trees in Demo01.hs.\n\n* Updated to track changes in Wumpus-Basic.\n\n";
        buildType = "Simple";
      };
      components = {
        "wumpus-tree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector-space
            hsPkgs.wumpus-core
            hsPkgs.wumpus-basic
          ];
        };
      };
    }