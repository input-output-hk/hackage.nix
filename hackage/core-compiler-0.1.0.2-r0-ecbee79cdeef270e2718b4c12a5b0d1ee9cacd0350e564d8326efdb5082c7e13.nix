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
      identifier = { name = "core-compiler"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2016 David Anekstein";
      maintainer = "aneksteind@gmail.com";
      author = "David Anekstein";
      homepage = "https://github.com/aneksteind/Core#readme";
      url = "";
      synopsis = "compile your own mini functional language with Core";
      description = "This package doubles as a compiler and as a module with which anyone can compile their own functional programming language by parsing into the 'CoreExpr' datatype";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "core-compiler-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."core-compiler" or (errorHandler.buildDepError "core-compiler"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }