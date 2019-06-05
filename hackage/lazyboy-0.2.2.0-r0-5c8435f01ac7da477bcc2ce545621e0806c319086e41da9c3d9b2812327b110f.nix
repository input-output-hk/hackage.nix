{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "lazyboy"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rose";
      maintainer = "rose@lain.org.uk";
      author = "Rose";
      homepage = "https://github.com/ix/lazyboy#readme";
      url = "";
      synopsis = "An EDSL for programming the Game Boy.";
      description = "An EDSL for programming the Nintendo Game Boy. <https://github.com/ix/lazyboy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.microstache)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "lazyboy-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lazyboy)
            (hsPkgs.microstache)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }