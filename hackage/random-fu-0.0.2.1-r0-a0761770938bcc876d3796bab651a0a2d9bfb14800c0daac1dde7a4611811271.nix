{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "random-fu";
        version = "0.0.2.1";
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
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.erf)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.stateref)
          (hsPkgs.storablevector)
          (hsPkgs.template-haskell)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }