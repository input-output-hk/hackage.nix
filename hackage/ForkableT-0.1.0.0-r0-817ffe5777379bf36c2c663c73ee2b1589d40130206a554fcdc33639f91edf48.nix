{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ForkableT";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andras Slemmer";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Forkable monad transformers";
      description = "Provides two classes for modular handling of forking";
      buildType = "Simple";
    };
    components = {
      "ForkableT" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
        ];
      };
    };
  }