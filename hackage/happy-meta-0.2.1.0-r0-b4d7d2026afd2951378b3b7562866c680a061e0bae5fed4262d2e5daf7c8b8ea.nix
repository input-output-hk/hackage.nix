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
      specVersion = "1.18";
      identifier = { name = "happy-meta"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artem Pelenitsyn (a.pelenitsyn@gmail.com)";
      author = "Jonas Duregard";
      homepage = "https://github.com/ulysses4ever/BNFC-meta";
      url = "";
      synopsis = "Quasi-quoter for Happy parsers";
      description = "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
    };
  }