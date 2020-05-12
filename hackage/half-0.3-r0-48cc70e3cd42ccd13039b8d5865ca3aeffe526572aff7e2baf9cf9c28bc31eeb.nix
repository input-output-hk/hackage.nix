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
      identifier = { name = "half"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/half";
      url = "";
      synopsis = "Half-precision floating-point";
      description = "Half-precision floating-point.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."half" or (errorHandler.buildDepError "half"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "7.8"
            then true
            else false;
          };
        };
      };
    }