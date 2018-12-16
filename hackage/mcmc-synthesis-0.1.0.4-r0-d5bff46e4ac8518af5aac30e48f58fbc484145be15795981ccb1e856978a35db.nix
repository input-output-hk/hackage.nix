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
        name = "mcmc-synthesis";
        version = "0.1.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jacobltaylor@gmail.com";
      author = "Jacob Taylor";
      homepage = "";
      url = "";
      synopsis = "MCMC applied to probabilistic program synthesis";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }