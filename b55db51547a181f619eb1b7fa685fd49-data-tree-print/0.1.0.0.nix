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
      specVersion = "1.10";
      identifier = {
        name = "data-tree-print";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/data-tree-print";
      url = "";
      synopsis = "Print Data instances as a nested tree";
      description = "Provides functionality similar to that of the `Show` class: Taking some\narbitrary value and returning a String.\n\n* Output is not intended to be valid haskell.\n\n* Requires a `Data.Data.Data` instance instead of a `Text.Show` one.\n\n* Output, if large, is often easier to parse than `show` output\ndue to the formatting as a nested tree.\n\n* The user can adapt the behaviour at runtime using custom layouting\nexpressed via syb-style extension.";
      buildType = "Simple";
    };
    components = {
      "data-tree-print" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.syb)
        ];
      };
    };
  }