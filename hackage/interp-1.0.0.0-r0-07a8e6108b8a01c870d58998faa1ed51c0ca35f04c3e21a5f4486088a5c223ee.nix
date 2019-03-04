{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "interp"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 sam raker";
      maintainer = "sam.raker@gmail.com";
      author = "sam raker";
      homepage = "https://github.com/swizzard/interp#readme";
      url = "";
      synopsis = "Tracery-like randomized text interpolation";
      description = "Please see the README on GitHub at <https://github.com/swizzard/interp#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hspec)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parser-combinators)
          (hsPkgs.random-fu)
          (hsPkgs.rvar)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "interp" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.interp)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parser-combinators)
            (hsPkgs.random-fu)
            (hsPkgs.rvar)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "interp-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.interp)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parser-combinators)
            (hsPkgs.random-fu)
            (hsPkgs.rvar)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }