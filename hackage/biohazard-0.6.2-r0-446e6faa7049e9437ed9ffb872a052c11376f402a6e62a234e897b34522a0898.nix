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
      specVersion = "1.9.2";
      identifier = {
        name = "biohazard";
        version = "0.6.2";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2015 Udo Stenzel";
      maintainer = "udo.stenzel@eva.mpg.de";
      author = "Udo Stenzel";
      homepage = "http://github.com/udo-stenzel/biohazard";
      url = "";
      synopsis = "bioinformatics support library";
      description = "This is a collection of modules I separated from\nvarious bioinformatics tools.  The hope is to make\nthem reusable and easier to maintain.  Also includes\nsome of these tools and a bunch that work on mitochondrial\nsequences.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-mmap)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.iteratee)
          (hsPkgs.ListLike)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.Vec)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "afroengineer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.iteratee)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "bam-fixpair" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.transformers)
          ];
        };
        "bam-meld" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
        "bam-resample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.random)
          ];
        };
        "bam-rewrap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
        "bam-rmdup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.iteratee)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
        "bam-trim" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
          ];
        };
        "count-coverage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.iteratee)
          ];
        };
        "dmg-est" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.nonlinear-optimization)
            (hsPkgs.vector)
          ];
        };
        "fastq2bam" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.iteratee)
            (hsPkgs.vector)
          ];
        };
        "glf-consensus" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.iteratee)
          ];
        };
        "gt-call" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.iteratee)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
        "jivebunny" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            (hsPkgs.vector-th-unbox)
          ];
        };
        "mt-anno" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.biohazard)
            (hsPkgs.containers)
          ];
        };
        "mt-ccheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.biohazard)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
          ];
        };
        "wiggle-coverage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
          ];
        };
      };
    };
  }