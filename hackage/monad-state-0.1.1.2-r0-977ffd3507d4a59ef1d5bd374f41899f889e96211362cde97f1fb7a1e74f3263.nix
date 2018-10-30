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
        name = "monad-state";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "KrabbyKrap@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "Utility library for monads, particularly those involving state";
      description = "Utility library for monads, particularly those involving state";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fclabels)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.AbortT-transformers)
        ];
      };
    };
  }