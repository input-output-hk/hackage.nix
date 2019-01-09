{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs-gloss"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-physics#readme";
      url = "";
      synopsis = "Simple gloss renderer for apecs";
      description = "Simple 2D gloss-based rendering for apecs.\nIntended for prototyping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.apecs)
          (hsPkgs.apecs-physics)
          (hsPkgs.linear)
          (hsPkgs.gloss)
          ];
        };
      };
    }