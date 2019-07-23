{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs-stm"; version = "0.1.2"; };
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
          (hsPkgs.apecs)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.list-t)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          ];
        };
      };
    }