{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haddocset";
          version = "0.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2017 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/haddocset";
        url = "";
        synopsis = "Generate docset of Dash by Haddock haskell documentation tool";
        description = "please read README.md <https://github.com/philopon/haddocset/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        exes = {
          haddocset = {
            depends  = ([
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.optparse-applicative
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.tagsoup
              hsPkgs.Cabal
              hsPkgs.text
              hsPkgs.sqlite-simple
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.http-types
            ] ++ (if compiler.isGhc
              then [ hsPkgs.haddock-api ]
              else [
                hsPkgs.haddock
              ])) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }