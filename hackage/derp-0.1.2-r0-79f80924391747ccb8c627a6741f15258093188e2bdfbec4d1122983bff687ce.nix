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
      specVersion = "1.6";
      identifier = {
        name = "derp";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david.darais@gmail.com";
      author = "David Darais";
      homepage = "";
      url = "";
      synopsis = "Derivative Parsing";
      description = "A parser based on derivatives of parser combinators (Might\nand Darais).  Our paper on Arxiv details the theory of\nparsing with derivatives: http://arxiv.org/abs/1010.5023.\nThis implementation uses my latest work on the theory that\nbrings the O(n*|G|^2) complexity bound to O(n) for parsing\nmost not-painfully-ambiguous grammars.  (|G| would be the\nsize of the initial grammar, n would be size of the input.\nThese bounds are based off of observation and intuition;\nthey are not proven yet.)  This implementation will not\nterminate if the resulting parse frest is infinite.  We\nknow how to extend the implementation to work for infinite\nparse trees with little effort.  If this is something you\nwould like to see, shoot me an email.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }