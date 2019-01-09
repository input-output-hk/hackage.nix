{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { release = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs-physics"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-physics#readme";
      url = "";
      synopsis = "2D physics for apecs";
      description = "2D physics for apecs. Uses Chipmunk physics library under the hood.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.apecs)
          (hsPkgs.containers)
          (hsPkgs.inline-c)
          (hsPkgs.linear)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          ];
        };
      };
    }