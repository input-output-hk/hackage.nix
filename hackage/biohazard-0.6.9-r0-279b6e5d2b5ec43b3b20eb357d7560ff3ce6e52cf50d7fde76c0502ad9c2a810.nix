{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "biohazard";
        version = "0.6.9";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2017 Udo Stenzel";
      maintainer = "udo.stenzel@eva.mpg.de";
      author = "Udo Stenzel";
      homepage = "http://github.com/udo-stenzel/biohazard";
      url = "";
      synopsis = "bioinformatics support library";
      description = "This is a collection of modules I separated from\nvarious bioinformatics tools.  The hope is to make\nthem reusable and easier to maintain.  Also includes\nsome of these tools and a bunch that work on mitochondrial\nsequences.";
      buildType = "Custom";
    };
    components = {
      "biohazard" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-mmap)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hybrid-vectors)
          (hsPkgs.iteratee)
          (hsPkgs.ListLike)
          (hsPkgs.nonlinear-optimization)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "test-pileup" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
        "redeye-dar" = {
          depends  = [
            (hsPkgs.aeson-pretty)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
        "redeye-single" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "redeye-flow" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.shake)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "afroengineer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "bam-fixpair" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.vector)
          ];
        };
        "bam-meld" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
        "bam-resample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.random)
          ];
        };
        "bam-rewrap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
        "bam-rmdup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "bam-trim" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
          ];
        };
        "fastq2bam" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.vector)
          ];
        };
        "jivebunny" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.biohazard)
            (hsPkgs.containers)
          ];
        };
        "mt-ccheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.biohazard)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }