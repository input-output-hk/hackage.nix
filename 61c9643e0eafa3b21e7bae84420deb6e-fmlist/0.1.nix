{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fmlist";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "";
        url = "";
        synopsis = "FoldMap lists";
        description = "FoldMap lists are lists represented by their foldMap function.\nFoldMap lists have O(1) cons, snoc and append, just like DLists,\nbut other operations might have favorable performance\ncharacteristics as well. These wild claims are still completely\nunverified though.";
        buildType = "Simple";
      };
      components = {
        fmlist = {
          depends  = [ hsPkgs.base ];
        };
      };
    }