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
      specVersion = "0";
      identifier = {
        name = "MaybeT";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kidd <haskell@randomhacks.net>";
      author = "Eric Kidd <haskell@randomhacks.net>";
      homepage = "";
      url = "";
      synopsis = "MaybeT monad transformer";
      description = "Support for computations with failures.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }