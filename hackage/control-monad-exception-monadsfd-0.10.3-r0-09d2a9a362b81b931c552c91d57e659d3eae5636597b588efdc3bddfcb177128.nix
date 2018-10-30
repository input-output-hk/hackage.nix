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
      specVersion = "1.10";
      identifier = {
        name = "control-monad-exception-monadsfd";
        version = "0.10.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Monads-fd instances for the EMT exceptions monad transformer";
      description = "Monads-fd instances for the EMT exceptions monad transformer";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.control-monad-exception)
          (hsPkgs.transformers)
          (hsPkgs.monads-fd)
        ];
      };
    };
  }