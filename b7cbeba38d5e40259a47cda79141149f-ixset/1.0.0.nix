{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ixset";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "Efficient relational queries on Haskell sets.";
        description = "Just pick which parts of your data structures you want indexed\nusing an easy to use template-haskell function. Spare yourself the\nneed to write, run, and maintain code that marshalls your data\nto/from an external relational database just for efficient\nqueries. happstack-ixset relies on generics and TH to spare you\nthe boilerplate normally required for such tasks.";
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