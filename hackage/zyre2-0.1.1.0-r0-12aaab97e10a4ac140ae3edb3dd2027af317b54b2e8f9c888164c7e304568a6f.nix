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
      identifier = { name = "zyre2"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2022 Emil Nylind";
      maintainer = "emil@nylind.se";
      author = "Emil Nylind";
      homepage = "https://github.com/skrioify/haskell-zyre2#readme";
      url = "";
      synopsis = "Haskell zyre bindings for reliable group messaging over local area networks.";
      description = "Please see the README on GitHub at <https://github.com/skrioify/haskell-zyre2#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = [
          (pkgs."zyre" or (errorHandler.sysDepError "zyre"))
          (pkgs."czmq" or (errorHandler.sysDepError "czmq"))
          ];
        buildable = true;
        };
      exes = {
        "zyre-example-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zyre2" or (errorHandler.buildDepError "zyre2"))
            ];
          buildable = true;
          };
        };
      tests = {
        "zyre2-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zyre2" or (errorHandler.buildDepError "zyre2"))
            ];
          buildable = true;
          };
        };
      };
    }