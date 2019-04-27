{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-decimal"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 FP Complete";
      maintainer = "alexey@fpcomplete.com";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/fpco/safe-decimal#readme";
      url = "";
      synopsis = "Safe and very efficient arithmetic operations on fixed decimal point numbers";
      description = "Please see the README on GitHub at <https://github.com/fpco/safe-decimal#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.scientific)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.safe-decimal)
            (hsPkgs.scientific)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }