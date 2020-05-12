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
    flags = { buildsampleprograms = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nonlinear-optimization-backprop";
        version = "0.2.4";
        };
      license = "GPL-3.0-only";
      copyright = "(c) 2020 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad";
      url = "";
      synopsis = "Wrapper of nonlinear-optimization package for using with backprop package";
      description = "This package enhances\n<https://hackage.haskell.org/package/nonlinear-optimization nonlinear-optimization>'s\nusability by using\n<https://hackage.haskell.org/package/backprop backprop>'s\nautomatic differentiation. You only need to\nspecify a function to minimize and don't need to\nspecify its gradient explicitly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
          (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"));
        buildable = true;
        };
      exes = {
        "LinearRegression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."nonlinear-optimization-backprop" or (errorHandler.buildDepError "nonlinear-optimization-backprop"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        };
      };
    }