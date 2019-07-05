{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "korea-holidays"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2019 Kyung Mo Kweon";
      maintainer = "kkweon@gmail.com";
      author = "Kyung Mo Kweon";
      homepage = "https://github.com/githubuser/korea-holidays#readme";
      url = "";
      synopsis = "Korea Holidays";
      description = "Please see the README on GitHub at <https://github.com/kkweon/korea-holidays#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.monad-extras)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "korea-holidays-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.korea-holidays)
            (hsPkgs.monad-extras)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }