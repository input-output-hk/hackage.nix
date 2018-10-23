{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "modify-fasta";
        version = "0.8.3.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "GregorySchwartz";
      homepage = "https://github.com/GregorySchwartz/modify-fasta";
      url = "";
      synopsis = "Modify fasta (and CLIP) files in several optional ways";
      description = "";
      buildType = "Simple";
    };
    components = {
      "modify-fasta" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fasta)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.text-show)
        ];
      };
      exes = {
        "modify-fasta" = {
          depends  = [
            (hsPkgs.modify-fasta)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.fasta)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pipes-text)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }