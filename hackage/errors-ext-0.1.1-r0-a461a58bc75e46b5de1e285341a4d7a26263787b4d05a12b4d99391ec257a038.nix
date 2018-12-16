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
      specVersion = "1.10";
      identifier = {
        name = "errors-ext";
        version = "0.1.1";
      };
      license = "LicenseRef-Apache";
      copyright = "2017 Warlock";
      maintainer = "internalmike@gmail.com";
      author = "Warlock";
      homepage = "https://github.com/A1-Triard/errors-ext#readme";
      url = "";
      synopsis = "A bracket function for ExceptT over IO monad.";
      description = "A bracket function for ExceptT over IO monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "errors-ext-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.errors-ext)
            (hsPkgs.errors)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }