{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      base4_2 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "random-fu";
          version = "0.0.3.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "http://code.haskell.org/~mokus/random-fu";
        url = "";
        synopsis = "Random number generation";
        description = "Random number generation based on orthogonal typeclasses\nfor entropy sources and random variable distributions, all\nserved up on a monadic platter.  Aspires to be useful\nin an idiomatic way in both \\\"pure\\\" and \\\"impure\\\" styles,\nas well as reasonably fast.";
        buildType = "Simple";
      };
      components = {
        random-fu = {
          depends  = [
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.erf
            hsPkgs.mersenne-random-pure64
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.stateref
            hsPkgs.storablevector
            hsPkgs.template-haskell
          ] ++ (if _flags.base4
            then [ hsPkgs.syb ] ++ [
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
        };
      };
    }