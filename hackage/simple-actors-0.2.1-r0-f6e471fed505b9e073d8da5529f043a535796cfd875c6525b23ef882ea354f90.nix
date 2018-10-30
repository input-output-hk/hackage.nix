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
        name = "simple-actors";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2011/05/simple-actors-a-simple-actor-model-concurrency-library/";
      url = "";
      synopsis = "A library for more structured concurrent programming, based\non the Actor Model";
      description = "simple-actors is an EDSL-style library for writing\nmore structured concurrent programs, based on the Actor\nModel. Computations are structured as \"Behaviors\" which take a\nsingle input value, perform some 'Action's, and return the\nBehavior to process the next input message it receives.\n\n/CHANGES/ 0.2.0 - 0.2.1:\n\n- constrain version of chan-split";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chan-split)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.contravariant)
        ];
      };
    };
  }