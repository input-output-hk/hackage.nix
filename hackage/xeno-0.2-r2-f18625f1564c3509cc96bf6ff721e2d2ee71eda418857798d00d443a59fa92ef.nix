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
    flags = { libxml2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xeno"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marco Zocca (zocca.marco gmail)";
      author = "Christopher Done";
      homepage = "https://github.com/ocramz/xeno";
      url = "";
      synopsis = "A fast event-based XML parser in pure Haskell";
      description = "Please see README.md          ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mutable-containers" or (errorHandler.buildDepError "mutable-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "xeno-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xeno" or (errorHandler.buildDepError "xeno"))
            (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "xeno-speed-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xeno" or (errorHandler.buildDepError "xeno"))
            (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          ] ++ pkgs.lib.optional (flags.libxml2) (hsPkgs."libxml" or (errorHandler.buildDepError "libxml"));
          buildable = true;
        };
        "xeno-memory-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xeno" or (errorHandler.buildDepError "xeno"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
          ];
          buildable = true;
        };
      };
    };
  }