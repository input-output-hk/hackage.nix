{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "dlist";
          version = "0.8.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2006-2009 Don Stewart, 2013-2016 Sean Leather";
        maintainer = "Sean Leather <sean.leather@gmail.com>";
        author = "Don Stewart";
        homepage = "https://github.com/spl/dlist";
        url = "";
        synopsis = "Difference lists";
        description = "Difference lists are a list-like type supporting O(1) append. This is\nparticularly useful for efficient logging and pretty printing (e.g. with the\nWriter monad), where list append quickly becomes too expensive.";
        buildType = "Simple";
      };
      components = {
        dlist = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.dlist
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.QuickCheck
            ] ++ [ hsPkgs.QuickCheck ];
          };
        };
      };
    }