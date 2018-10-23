{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rl-satton";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Sergey Mironov";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "https://github.com/grwlf/rl";
      url = "";
      synopsis = "Collection of Reinforcement Learning algorithms";
      description = "rl-satton provides implementation of algorithms, described in the\n'Reinforcement Learing: An Introduction' book by Richard S. Satton and Andrew\nG. Barto. In particular, TD(0), TD(lambda), Q-learing are implemented.\nCode readability was placed above performance.\nUsage examples are provided in the ./examples folder.";
      buildType = "Simple";
    };
    components = {
      "rl-satton" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.MonadRandom)
          (hsPkgs.transformers)
          (hsPkgs.monad-loops)
          (hsPkgs.lens)
          (hsPkgs.random)
          (hsPkgs.heredocs)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.stm)
          (hsPkgs.pretty-show)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.free)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rl-satton)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }