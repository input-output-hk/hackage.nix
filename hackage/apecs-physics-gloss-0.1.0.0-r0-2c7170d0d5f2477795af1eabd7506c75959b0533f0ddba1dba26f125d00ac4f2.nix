{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apecs-physics-gloss";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-physics#readme";
      url = "";
      synopsis = "Gloss rendering for apecs-physics";
      description = "Gloss rendering for apecs-physics";
      buildType = "Simple";
    };
    components = {
      "apecs-physics-gloss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.apecs-physics)
          (hsPkgs.gloss)
          (hsPkgs.apecs)
        ];
      };
    };
  }