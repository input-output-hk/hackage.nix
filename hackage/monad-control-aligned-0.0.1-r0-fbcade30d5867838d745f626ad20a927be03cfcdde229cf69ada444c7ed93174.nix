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
        name = "monad-control-aligned";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/monad-control#readme";
      url = "";
      synopsis = "Just like monad-control, except less efficient, and the monadic state terms are all * -> *";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }