{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cmaes"; version = "0.2.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "CMA-ES wrapper in Haskell";
      description = "@cmaes@ is a wrapper for Covariance Matrix Adaptation Evolution\nStrategy(CMA-ES), an evolutionary algorithm for difficult non-linear\nnon-convex optimization problems in continuous domain. To use this\npackage you need python2 with numpy available on your system. The\npackage includes @cma.py@ , Nikolaus Hansen's production-level CMA\nlibrary: <http://www.lri.fr/~hansen/cmaes_inmatlab.html#python>.\n\nThis package is an aggregate of programs. cma.py (c) Nikolaus\nHansen, 2008-2012 is redistributed under GPL 2 or 3. All the other\ncomponents (c) Takayuki Muranushi are licensed under MIT\nlicense. See the files LICENSE.GPL2, LICENSE.GPL3 and LICENSE.MIT\nfor more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmaes" or ((hsPkgs.pkgs-errors).buildDepError "cmaes"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."doctest-prop" or ((hsPkgs.pkgs-errors).buildDepError "doctest-prop"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }