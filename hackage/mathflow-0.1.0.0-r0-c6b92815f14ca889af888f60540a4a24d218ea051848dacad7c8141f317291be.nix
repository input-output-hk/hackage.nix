{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usepython = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mathflow"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Junji Hashimoto";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/mathflow#readme";
      url = "";
      synopsis = "Dependently typed tensorflow modeler";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.singletons)
          (hsPkgs.process)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "mathflow-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mathflow)
            (hsPkgs.singletons)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec-server)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            ];
          };
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }