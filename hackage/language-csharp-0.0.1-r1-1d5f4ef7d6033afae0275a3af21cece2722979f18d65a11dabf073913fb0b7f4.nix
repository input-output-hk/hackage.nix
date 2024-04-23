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
      identifier = { name = "language-csharp"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Stefan Koppier";
      maintainer = "stefan.koppier@outlook.com";
      author = "Stefan Koppier";
      homepage = "https://github.com/StefanKoppier/language-csharp";
      url = "";
      synopsis = "C# source code manipulation";
      description = "A Haskell library containing an abstract syntax, lexer,\nparser and pretty printer for C#, aiming to conform the\nC# 6.0 draft specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
    };
  }