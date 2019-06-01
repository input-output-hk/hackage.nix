{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "alga"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2015 Mark Karpov";
      maintainer = "Mark Karpov";
      author = "Mark Karpov";
      homepage = "https://github.com/mrkkrp/alga";
      url = "";
      synopsis = "Algorithmic automation for various DAWs";
      description = "How to algorithmically control every aspect of music using familiar,\nrobust tools: plugins, DAWs, etc. that have not built with this in mind?\nI've partially solved the problem in MIDA -- program that generates MIDI\nfiles using very simple and symmetric language. However, even though MIDA\nis a fine tool to create scores, it's not sufficient if you want to\ncontrol everything. Initially I thought I could find some plugins that can\nalgorithmically control other plugins, but there are no decent tools of\nthis sort. How automation is handled in a traditional DAW? Well, you draw\nit in a separate track. Wouldn't it be a good idea to algorithmically\nperform exactly that: drawing of the automation track. This is simpler\nthan it may seem: many DAWs allow to export tracks in XML format, and this\nis all we need to start our hacking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.haskeline)
          (hsPkgs.hxt)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.tf-random)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "alga" = {
          depends = [
            (hsPkgs.alga)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.formatting)
            (hsPkgs.haskeline)
            (hsPkgs.hxt)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.random)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.tf-random)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.alga)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hxt)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.tf-random)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }