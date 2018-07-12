{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haddocset";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Hirotomo Moriwaki";
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
          "haddocset" = {
            depends  = [
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
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.resourcet
              hsPkgs.mtl
            ] ++ (if compiler.isGhc && compiler.version.ge "7.8"
              then [ hsPkgs.haddock-api ]
              else [ hsPkgs.haddock ]);
          };
        };
      };
    }