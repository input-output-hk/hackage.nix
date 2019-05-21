{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "numhask-hedgehog"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "Laws and tests for numhask";
      description = "Laws and tests for numhask.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.numhask)
          (hsPkgs.numhask-space)
          (hsPkgs.numhask-prelude)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.numhask)
            (hsPkgs.numhask-prelude)
            (hsPkgs.numhask-hedgehog)
            ];
          };
        };
      };
    }