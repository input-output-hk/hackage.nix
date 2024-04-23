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
      specVersion = "1.12";
      identifier = { name = "aern2-mfun"; version = "0.2.9.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2022 Eike Neumann, Junaid Rasheed, Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Eike Neumann, Junaid Rasheed, Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2#readme";
      url = "";
      synopsis = "Multi-variate real function optimisation and proving";
      description = "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aern2-fun" or (errorHandler.buildDepError "aern2-fun"))
          (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
          (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "aern2-mfun-benchmark-optimisation" = {
          depends = [
            (hsPkgs."aern2-fun" or (errorHandler.buildDepError "aern2-fun"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }