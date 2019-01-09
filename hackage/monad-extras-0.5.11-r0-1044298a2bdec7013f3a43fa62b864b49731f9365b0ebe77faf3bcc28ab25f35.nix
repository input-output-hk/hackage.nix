{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-extras"; version = "0.5.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley, Chris Done";
      homepage = "http://github.com/jwiegley/monad-extras";
      url = "";
      synopsis = "Extra utility functions for working with monads";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.stm)
          ];
        };
      };
    }