{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "suffixtree";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bos@serpentine.com";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://www.serpentine.com/software/suffixtree/";
        url = "";
        synopsis = "Efficient, lazy suffix tree implementation";
        description = "An efficient, lazy suffix tree implementation.";
        buildType = "Custom";
      };
      components = {
        suffixtree = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }