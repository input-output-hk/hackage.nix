{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "garsia-wachs";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A Functional Implementation of the Garsia-Wachs Algorithm";
        description = "The Garsia-Wachs algorithm builds a binary tree with minimum\nweighted path length from weighted leaf nodes given in symmetric order.\nThis can be used to build optimum search tables, to balance a\n'ropes' data structure in an optimal way.";
        buildType = "Simple";
      };
      components = {
        garsia-wachs = {
          depends  = if _flags.old-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.containers
            ];
        };
      };
    }