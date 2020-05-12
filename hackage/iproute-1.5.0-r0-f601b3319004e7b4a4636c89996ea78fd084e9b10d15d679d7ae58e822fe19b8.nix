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
      identifier = { name = "iproute"; version = "1.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/iproute/";
      url = "";
      synopsis = "IP Routing Table";
      description = "IP Routing Table is a tree of IP ranges\nto search one of them on the longest\nmatch base. It is a kind of TRIE with one\nway branching removed. Both IPv4 and IPv6\nare supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."appar" or (errorHandler.buildDepError "appar"))
          (hsPkgs."byteorder" or (errorHandler.buildDepError "byteorder"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2.1" && (compiler.isGhc && (compiler.version).lt "7.6.1")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."appar" or (errorHandler.buildDepError "appar"))
            (hsPkgs."byteorder" or (errorHandler.buildDepError "byteorder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }