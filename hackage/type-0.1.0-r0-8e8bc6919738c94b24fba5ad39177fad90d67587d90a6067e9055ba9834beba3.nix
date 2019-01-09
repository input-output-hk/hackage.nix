{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "type"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Topi Karvonen 2009";
      maintainer = "topi.karvonen@gmail.com";
      author = "Topi Karvonen";
      homepage = "";
      url = "";
      synopsis = "Dynamic casting library with support for arbitrary rank type kinds.";
      description = "Originally written out of need to write Typeable instances for monad transformers. This is troublesome since monad transformer type constructors have by definition at least rank 2 kind.\nBy default only type constructors whose kind contains maximum of 8 units are supported, for example: @ * -> (* -> *) -> ((* -> *) -> *) -> * -> * @.\nThe provided generator allows one to support even more complex types.\nHowever be aware that the amount of code generated increases exponentially.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          ];
        };
      };
    }