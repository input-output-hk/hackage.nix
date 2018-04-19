{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ixset";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "Efficient relational queries on Haskell sets.";
        description = "Create and query sets that are indexed by multiple indices.";
        buildType = "Simple";
      };
      components = {
        ixset = {
          depends  = ([
            hsPkgs.containers
            hsPkgs.safecopy
            hsPkgs.template-haskell
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ])) ++ [
            hsPkgs.syb-with-class
          ];
        };
      };
    }