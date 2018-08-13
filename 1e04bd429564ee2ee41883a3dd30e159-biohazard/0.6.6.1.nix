{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "biohazard";
        version = "0.6.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2016 Udo Stenzel";
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
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-mmap)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
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
          (hsPkgs.Vec)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "redeye-dar" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
        "redeye-div" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.filepath)
            (hsPkgs.hmatrix)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
        "redeye-pileup" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.iteratee)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.Vec)
            (hsPkgs.vector)
          ];
        };
        "redeye-single" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.iteratee)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "gt-scan" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.iteratee)
            (hsPkgs.nonlinear-optimization)
            (hsPkgs.primitive)
            (hsPkgs.strict)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
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
            (hsPkgs.iteratee)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "bam-fixpair" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.biohazard)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.transformers)
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
            (hsPkgs.iteratee)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
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
            (hsPkgs.iteratee)
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