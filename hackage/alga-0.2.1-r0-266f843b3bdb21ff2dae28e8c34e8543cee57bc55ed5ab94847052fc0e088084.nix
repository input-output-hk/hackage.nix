{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "alga";
        version = "0.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2015–2016 Mark Karpov";
      maintainer = "Mark Karpov";
      author = "Mark Karpov";
      homepage = "https://github.com/mrkkrp/alga";
      url = "";
      synopsis = "Algorithmic automation for various DAWs";
      description = "How to algorithmically control every aspect of music using familiar,\nrobust tools: plugins, DAWs, etc. that have not been built with this in\nmind?  I've partially solved the problem in MIDA — program that generates\nMIDI files using very simple and symmetric language. However, even though\nMIDA is a fine tool to create scores, it's not sufficient if you want to\ncontrol everything. Initially I thought I could find some plugins that can\nalgorithmically control other plugins, but there are no decent tools of\nthis sort. How automation is handled in a traditional DAW? Well, you draw\nit in a separate track. Wouldn't it be a good idea to algorithmically\nperform exactly that: drawing of the automation track. This is simpler\nthan it may seem: many DAWs allow to export tracks in XML format, and this\nis all we need to start our hacking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          depends  = [
            (hsPkgs.alga)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.formatting)
            (hsPkgs.haskeline)
            (hsPkgs.hxt)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.tf-random)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
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