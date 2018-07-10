{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dejafu";
          version = "1.11.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015--2018 Michael Walker";
        maintainer = "mike@barrucadu.co.uk";
        author = "Michael Walker";
        homepage = "https://github.com/barrucadu/dejafu";
        url = "";
        synopsis = "A library for unit-testing concurrent programs.";
        description = "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time\n\nThis package builds on the\n[concurrency](https://hackage.haskell.org/package/concurrency)\npackage by enabling you to deterministically test your concurrent\nprograms.\n\nSee the [website](https://dejafu.readthedocs.io) or README for more.";
        buildType = "Simple";
      };
      components = {
        dejafu = {
          depends  = [
            hsPkgs.base
            hsPkgs.concurrency
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.leancheck
            hsPkgs.profunctors
            hsPkgs.random
            hsPkgs.transformers
          ];
        };
      };
    }