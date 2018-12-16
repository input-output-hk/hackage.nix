{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-topic-models";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "https://github.com/bgamari/bayes-stack";
      url = "";
      synopsis = "A few network topic model implementations for bayes-stack";
      description = "Implementations of a few network topic models build upon bayes-stack.\nThe package includes Latent Dirichlet Allocation\n(LDA), the shared taste model, and the citation\ninfluence model.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bayes-stack-lda" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bayes-stack)
            (hsPkgs.text)
            (hsPkgs.random-fu)
            (hsPkgs.mwc-random)
            (hsPkgs.logfloat)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.stm)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
        "bayes-stack-st" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bayes-stack)
            (hsPkgs.text)
            (hsPkgs.random-fu)
            (hsPkgs.mwc-random)
            (hsPkgs.logfloat)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.stm)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
        "bayes-stack-ci" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bayes-stack)
            (hsPkgs.text)
            (hsPkgs.random-fu)
            (hsPkgs.mwc-random)
            (hsPkgs.logfloat)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.stm)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
        "bayes-stack-dump-lda" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bayes-stack)
            (hsPkgs.text)
            (hsPkgs.random-fu)
            (hsPkgs.mwc-random)
            (hsPkgs.logfloat)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
        "bayes-stack-dump-st" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bayes-stack)
            (hsPkgs.text)
            (hsPkgs.random-fu)
            (hsPkgs.mwc-random)
            (hsPkgs.logfloat)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
        "bayes-stack-dump-ci" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bayes-stack)
            (hsPkgs.text)
            (hsPkgs.random-fu)
            (hsPkgs.mwc-random)
            (hsPkgs.logfloat)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }