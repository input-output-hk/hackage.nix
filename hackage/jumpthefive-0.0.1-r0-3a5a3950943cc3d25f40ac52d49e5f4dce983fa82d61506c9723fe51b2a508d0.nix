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
        name = "jumpthefive";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "an elementary symmetric chiffre for pragmatically protecting one's effects";
      description = "Watch The Wire S01E05: The Pager";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parallel)
        ];
      };
      exes = {
        "jumpthefive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parallel)
          ];
        };
      };
    };
  }