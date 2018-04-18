{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "multiset";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "twanvl@gmail.com";
        author = "Twan van Laarhoven";
        homepage = "";
        url = "";
        synopsis = "The Data.MultiSet container type";
        description = "A variation of Data.Set. Multisets, sometimes also called bags, can contain multiple copies of the same key.";
        buildType = "Simple";
      };
      components = {
        multiset = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
          ];
        };
      };
    }