{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cmaes"; version = "0.2.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmaes" or (errorHandler.buildDepError "cmaes"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-prop" or (errorHandler.buildDepError "doctest-prop"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }