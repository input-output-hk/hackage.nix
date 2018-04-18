{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llrbtree";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Left-Leaning Red-Black Tree";
        description = "Left-Leaning Red-Black Tree";
        buildType = "Simple";
      };
      components = {
        llrbtree = {
          depends  = [ hsPkgs.base ];
        };
      };
    }