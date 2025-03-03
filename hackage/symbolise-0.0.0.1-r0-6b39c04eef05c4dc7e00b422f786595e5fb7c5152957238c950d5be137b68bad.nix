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
      specVersion = "2.2";
      identifier = { name = "symbolise"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023-2025 Marten Wijnja";
      maintainer = "qqwy@gmx.com";
      author = "Qqwy / Marten";
      homepage = "https://github.com/Qqwy/haskell-symbolize#readme";
      url = "";
      synopsis = "You want Symbolize with a Z";
      description = "You want Symbolize with a Z:\n\nHackage: <https://hackage.haskell.org/package/symbolize>\n\nGitHub: <https://github.com/qqwy/haskell-symbolize>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."youProbablyWantSymbolizeWithAZ" or (errorHandler.buildDepError "youProbablyWantSymbolizeWithAZ"))
        ];
        buildable = true;
      };
    };
  }