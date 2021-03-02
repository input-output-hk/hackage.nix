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
      identifier = { name = "core-haskell"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ChengXi Bao <c.x.bao@student.ucc.ie>";
      author = "ChengXi Bao";
      homepage = "";
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
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            ];
          buildable = true;
          };
        };
      };
    }