{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haquil"; version = "0.2.1.5"; };
      license = "MIT";
      copyright = "(c) 2017-18 Brian W Bush";
      maintainer = "Brian W Bush <code@functionally.io>";
      author = "Brian W Bush <code@functionally.io>";
      homepage = "https://bitbucket.org/functionally/haquil";
      url = "https://bitbucket.org/functionally/quil/downloads/haquil-0.2.1.5.tar.gz";
      synopsis = "A Haskell implementation of the Quil instruction set for quantum computing.";
      description = "This Haskell library implements the Quil language for quantum computing, as specified in \"A Practical Quantum Instruction Set Architecture\" \\<https:\\/\\/arxiv.org\\/abs\\/1608.03355\\/\\>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bv)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.data-default)
          (hsPkgs.hTensor)
          (hsPkgs.MonadRandom)
          (hsPkgs.random)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "haquil-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bv)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.data-default)
            (hsPkgs.hTensor)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }