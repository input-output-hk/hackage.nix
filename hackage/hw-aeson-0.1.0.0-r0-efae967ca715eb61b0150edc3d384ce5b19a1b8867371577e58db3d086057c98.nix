{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-aeson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-aeson#readme";
      url = "";
      synopsis = "Convenience functions for Aeson";
      description = "Convenience functions for Aeson";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.aeson) (hsPkgs.base) (hsPkgs.text) ]; };
      tests = {
        "hw-aeson-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-aeson)
            ];
          };
        };
      };
    }