{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "typed-duration"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ömer Sinan Ağacan";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
      author = "Ömer Sinan Ağacan";
      homepage = "https://github.com/osa1/typed-duration#readme";
      url = "";
      synopsis = "Thread delay and timeout functions with typed arguments";
      description = "Experimental";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          ];
        };
      };
    }