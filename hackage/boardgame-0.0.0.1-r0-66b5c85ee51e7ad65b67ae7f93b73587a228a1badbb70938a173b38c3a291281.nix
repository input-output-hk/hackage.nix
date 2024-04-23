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
    flags = { wasm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "boardgame"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Mårten Åsberg <marten.asberg@outlook.com>";
      author = "";
      homepage = "https://github.com/Boardgame-DSL/boardgame";
      url = "";
      synopsis = "Modeling boardgames";
      description = "A library with the basis for modeling and playing boardgames. Comes with\nbuilt-in functions for playing games through a web interface (requires WASM\ncompilation).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ pkgs.lib.optionals (flags.wasm) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."asterius-prelude" or (errorHandler.buildDepError "asterius-prelude"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
      exes = {
        "boardgame" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boardgame" or (errorHandler.buildDepError "boardgame"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ pkgs.lib.optionals (flags.wasm) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "boardgame-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }