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
      identifier = { name = "MIP-glpk"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2020 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/haskell-MIP#readme";
      url = "";
      synopsis = "A GLPK backend to the MIP library.";
      description = "Please see the README on GitHub at <https://github.com/msakai/haskell-MIP/tree/master/MIP-glpk#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MIP" or (errorHandler.buildDepError "MIP"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-encoding" or (errorHandler.buildDepError "bytestring-encoding"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extended-reals" or (errorHandler.buildDepError "extended-reals"))
          (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
          (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [ (pkgs."glpk" or (errorHandler.sysDepError "glpk")) ];
        buildable = true;
      };
      tests = {
        "MIP-glpk-test" = {
          depends = [
            (hsPkgs."MIP" or (errorHandler.buildDepError "MIP"))
            (hsPkgs."MIP-glpk" or (errorHandler.buildDepError "MIP-glpk"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extended-reals" or (errorHandler.buildDepError "extended-reals"))
            (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
          ];
          buildable = true;
        };
      };
    };
  }