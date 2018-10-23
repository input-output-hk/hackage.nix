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
        name = "control-monad-exception-monadstf";
        version = "0.8.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Monads-tf instances for the EMT exceptions monad transformer";
      description = "Monads-tf instances for the EMT exceptions monad transformer";
      buildType = "Simple";
    };
    components = {
      "control-monad-exception-monadstf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.control-monad-exception)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }