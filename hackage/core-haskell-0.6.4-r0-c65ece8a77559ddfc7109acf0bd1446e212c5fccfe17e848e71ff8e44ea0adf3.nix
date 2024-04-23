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
      specVersion = "1.8";
      identifier = { name = "core-haskell"; version = "0.6.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "c.x.bao@student.ucc.ie";
      author = "ChengXi Bao";
      homepage = "https://github.com/happlebao/Core-Haskell";
      url = "";
      synopsis = "A subset of Haskell using in UCC for teaching purpose";
      description = "A subset of Haskell using in UCC for teaching purpose.\nIt enables a tiny subset of Haskell default, but the syntax can be customized,\nteacher can enable more syntax along with the teaching progress.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "core-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
          buildable = true;
        };
      };
    };
  }