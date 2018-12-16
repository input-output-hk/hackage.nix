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
      specVersion = "1.10.0";
      identifier = {
        name = "lifted-stm";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/lifted-stm";
      url = "";
      synopsis = "STM operations lifted through monad transformer stacks";
      description = "This package provides STM operations lifted through monad transformer\nstacks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-abort)
          (hsPkgs.monad-finally)
        ];
      };
    };
  }