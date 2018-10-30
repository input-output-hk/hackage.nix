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
      specVersion = "1.8";
      identifier = {
        name = "tardis";
        version = "0.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/tardis";
      url = "";
      synopsis = "Bidirectional state monad transformer";
      description = "A Tardis is a combination of both a forwards and a backwards\nstate transformer, providing two state values that \\\"travel\\\"\nin opposite directions.\n\nA detailed description of what a Tardis is and how to use it\ncan be found in the documentation for Control.Monad.Tardis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
        ];
      };
    };
  }