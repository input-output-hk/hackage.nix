{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TreeStructures";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "brendan@bhickey.net";
        author = "Brendan Hickey";
        homepage = "http://hg.bhickey.net";
        url = "";
        synopsis = "Tree structures";
        description = "A collection of heaps and search trees";
        buildType = "Simple";
      };
      components = {
        TreeStructures = {
          depends  = [ hsPkgs.base ];
        };
      };
    }