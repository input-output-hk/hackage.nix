{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "GenussFold";
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015";
      homepage = "https://github.com/choener/GenussFold";
      url = "";
      synopsis = "MCFGs for Genus-1 RNA Pseudoknots";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nGenus-1 RNA pseudoknot grammars implemented with a multiple\ncontext-free language. Compared to the usual implementations\nthat are based on explicit recursions, an implementation based\non a formal grammar is much more pleasing to write.\n\nConsult the README for details.\n\n* @BioInf.GenussFold.PKN@: Recursive pseudoknots with a simple\nbasepair maximization scoring scheme.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ADPfusion)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.FormalGrammars)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "GenussFold" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.FormalGrammars)
            (hsPkgs.GenussFold)
          ];
        };
      };
    };
  }