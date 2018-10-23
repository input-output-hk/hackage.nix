{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "control-monad-free";
        version = "0.5.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Luke Palmer, Pepe Iborra";
      homepage = "http://github.com/pepeiborra/control-monad-free";
      url = "";
      synopsis = "Free monads and monad transformers";
      description = "This package provides datatypes to construct Free monads,\nFree monad transformers, and useful instances. In addition it\nprovides the constructs to avoid quadratic complexity of left\nassociative bind, as explained in:\n\n* Janis Voigtlander, /Asymptotic Improvement of Computations over Free Monads, MPC'08/";
      buildType = "Simple";
    };
    components = {
      "control-monad-free" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
        ];
      };
    };
  }