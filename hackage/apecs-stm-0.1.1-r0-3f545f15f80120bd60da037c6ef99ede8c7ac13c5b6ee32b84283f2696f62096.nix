{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs-stm"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-stm#readme";
      url = "";
      synopsis = "STM stores for apecs";
      description = "Apecs stores that live in the STM monad, and other tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.list-t)
          (hsPkgs.vector)
          (hsPkgs.template-haskell)
          (hsPkgs.stm-containers)
          (hsPkgs.apecs)
          ];
        };
      };
    }