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
      identifier = { name = "haskell-src"; version = "1.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Simon Marlow, Sven Panne and Noel Winstanley";
      homepage = "";
      url = "";
      synopsis = "Support for manipulating Haskell source code";
      description = "The @haskell-src@ package provides support for manipulating Haskell\nsource code. The package provides a lexer, parser and\npretty-printer, and a definition of a Haskell abstract syntax tree\n(AST). Common uses of this package are to parse or generate\n<http://www.haskell.org/onlinereport/ Haskell 98> code";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
    };
  }