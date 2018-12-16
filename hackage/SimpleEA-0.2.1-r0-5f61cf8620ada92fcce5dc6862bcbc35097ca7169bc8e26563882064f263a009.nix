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
        name = "SimpleEA";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ehamberg@gmail.com";
      author = "Erlend Hamberg";
      homepage = "http://www.github.com/ehamberg/simpleea/";
      url = "";
      synopsis = "Simple evolutionary algorithm framework.";
      description = "Simple framework for running an evolutionary algorithm by\nproviding selection, recombination, and mutation operators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.MonadRandom)
          (hsPkgs.mersenne-random-pure64)
        ];
      };
    };
  }