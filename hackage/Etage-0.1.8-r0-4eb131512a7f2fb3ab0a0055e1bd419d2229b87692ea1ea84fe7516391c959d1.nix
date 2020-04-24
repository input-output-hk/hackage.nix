{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Etage"; version = "0.1.8"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2010-2011 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "A general data-flow framework";
      description = "A general data-flow framework featuring nondeterminism, laziness and neurological pseudo-terminology. It can be\nused for example for data-flow computations or event propagation networks. It tries hard to aide type checking and to\nallow proper initialization and cleanup so that interfaces to input and output devices (data or events producers or\nconsumers) can be made (so that created models\\/systems\\/networks can be used directly in real world applications, for\nexample robots).\n\nIts main goal is to model complex neural networks with more biological realism. Namely that impulses do\ntake time to travel and neuron responses are also not instantaneous. And of course that neural systems are in\nits base nondeterministic and that some level of determinism is build upon that. All this of course makes reasoning\nabout such networks even harder (impossible?).\n\nThis framework is in fact just a simple abstraction of Haskell threads and data passing between them through\nchannels with threads' initialization and cleanup wrapped into a Haskell type class.\n\nFeel free to contribute or suggest additional features or (example) programs or to create interfaces to other modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."operational" or ((hsPkgs.pkgs-errors).buildDepError "operational"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }