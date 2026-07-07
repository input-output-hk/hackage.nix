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
      specVersion = "1.10";
      identifier = { name = "language-lustre"; version = "1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor Diatchki";
      homepage = "";
      url = "";
      synopsis = "A parser and AST for the Lustre language.";
      description = "A parser and AST for the Lustre language (specifically Lustre V6).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alex-tools" or (errorHandler.buildDepError "alex-tools"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."panic" or (errorHandler.buildDepError "panic"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GraphSCC" or (errorHandler.buildDepError "GraphSCC"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      exes = {
        "lustre" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."simple-get-opt" or (errorHandler.buildDepError "simple-get-opt"))
            (hsPkgs."language-lustre" or (errorHandler.buildDepError "language-lustre"))
          ];
          buildable = true;
        };
      };
    };
  }