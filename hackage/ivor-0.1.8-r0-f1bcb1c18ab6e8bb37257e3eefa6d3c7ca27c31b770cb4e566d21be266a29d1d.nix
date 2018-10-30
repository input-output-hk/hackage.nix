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
      specVersion = "0";
      identifier = {
        name = "ivor";
        version = "0.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@dcs.st-and.ac.uk>";
      author = "Edwin Brady";
      homepage = "http://www.dcs.st-and.ac.uk/~eb/Ivor/";
      url = "";
      synopsis = "Theorem proving library based on dependent type theory";
      description = "Ivor is a type theory based theorem prover, with a\nHaskell API, designed for easy extending and embedding\nof theorem proving technology in Haskell\napplications. It provides an implementation of the\ntype theory and tactics for building terms, more or\nless along the lines of systems such as Coq or Agda,\nand taking much of its inspiration from Conor\nMcBride's presentation of OLEG.\n\nThe API provides a collection of primitive tactics and\ncombinators for building new tactics. It is therefore\npossible to build new tactics to suit specific\napplications. Ivor features a dependent type theory\nsimilar to Luo's ECC with definitions (and similar to\nthat implemented in Epigram), with dependent pattern\nmatching, and experimental multi-stage programming\nsupport. Optionally, it can be extended with\nheterogeneous equality, primitive types and operations,\nnew parser rules, user defined tactics and (if you\nwant your proofs to be untrustworthy) a fixpoint\ncombinator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.directory)
        ];
      };
    };
  }