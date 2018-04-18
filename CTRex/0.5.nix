{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "CTRex";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "http://www.haskell.org/haskellwiki/CTRex";
        url = "";
        synopsis = "Open records using closed type families.";
        description = "Open records using closed type families.";
        buildType = "Simple";
      };
      components = {
        CTRex = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.mtl
          ];
        };
      };
    }