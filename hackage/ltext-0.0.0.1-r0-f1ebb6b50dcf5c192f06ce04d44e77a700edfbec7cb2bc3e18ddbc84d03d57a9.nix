{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ltext"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Higher-order file applicator";
      description = "Turn plaintext files into lambdas for templating -\nfunction application has implicit concatenation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.composition)
          (hsPkgs.composition-extra)
          ];
        };
      exes = {
        "ltext" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mtl)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.pretty)
            (hsPkgs.composition)
            (hsPkgs.composition-extra)
            ];
          };
        };
      tests = { "spec" = { depends = [ (hsPkgs.base) (hsPkgs.hspec) ]; }; };
      };
    }