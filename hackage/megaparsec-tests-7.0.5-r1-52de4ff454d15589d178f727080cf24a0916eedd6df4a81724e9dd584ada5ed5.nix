{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "megaparsec-tests"; version = "7.0.5"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Megaparsec contributors";
      homepage = "https://github.com/mrkkrp/megaparsec";
      url = "";
      synopsis = "Test utilities and the test suite of Megaparsec";
      description = "Test utilities and the test suite of Megaparsec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.hspec-megaparsec)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.megaparsec-tests)
            (hsPkgs.mtl)
            (hsPkgs.parser-combinators)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }