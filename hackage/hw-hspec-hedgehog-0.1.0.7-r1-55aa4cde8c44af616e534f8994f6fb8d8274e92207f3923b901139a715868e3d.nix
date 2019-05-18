{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-hspec-hedgehog"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-hspec-hedgehog#readme";
      url = "";
      synopsis = "Interoperability between hspec and hedgehog";
      description = "Interoperability between hspec and hedgehog.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
          (hsPkgs.call-stack)
          (hsPkgs.hedgehog)
          (hsPkgs.hspec)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "hw-hspec-hedgehog-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }