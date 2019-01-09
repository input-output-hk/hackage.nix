{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smiles"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, Artem Kondukov et al.";
      maintainer = "kondiukov@biocad.ru";
      author = "Artem Kondyukov, Pavel Yakovlev, Vladimir Morozov";
      homepage = "https://github.com/zmactep/smiles#readme";
      url = "";
      synopsis = "";
      description = "Full support of OpenSMILES and SMARTS specifications for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.megaparsec) (hsPkgs.text) ];
        };
      tests = {
        "smiles-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smiles)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            ];
          };
        "smarts-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smiles)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }