{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghc_6_10 = true;
      ghc_6_8 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "uniplate";
          version = "1.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2006-8, Neil Mitchell";
        maintainer = "ndmitchell@gmail.com";
        author = "Neil Mitchell";
        homepage = "http://www-users.cs.york.ac.uk/~ndm/uniplate/";
        url = "";
        synopsis = "Uniform type generic traversals.";
        description = "Uniplate is a boilerplate removal library, with similar goals to the\noriginal Scrap Your Boilerplate work. It requires few extensions to\nHaskell.";
        buildType = "Simple";
      };
      components = {
        "uniplate" = {
          depends  = if _flags.ghc_6_10
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.contains
              hsPkgs.syb
            ]
            else if _flags.ghc_6_8
              then [
                hsPkgs.base
                hsPkgs.mtl
                hsPkgs.containers
              ]
              else [ hsPkgs.base hsPkgs.mtl ];
        };
      };
    }