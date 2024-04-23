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
      specVersion = "1.6";
      identifier = { name = "package-vt"; version = "0.1.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
      author = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell Package Versioning Tool";
      description = "This program is meant as a tool for suggesting version change of libraries.\nIt tries to match official Package Versioning Policy.\n\nSee <http://www.haskell.org/haskellwiki/Package_versioning_policy> for details.\n\nThis version works by inspecting new/removed exported modules or entities.\nIt doesn't currently check the types of exported elements.\n\nTypical invocation:\n\n> package-vt module-ver-1.hs module-ver-2.hs\n\nIf you unpack modules with @cabal unpack@ you can use the following form:\n\n> # unpack modules\n> cabal unpack package-1\n> cabal unpack package-2\n> package-vt module-1/module.cabal module-2/module.cabal";
      buildType = "Simple";
    };
    components = {
      exes = {
        "package-vt" = {
          depends = [
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }