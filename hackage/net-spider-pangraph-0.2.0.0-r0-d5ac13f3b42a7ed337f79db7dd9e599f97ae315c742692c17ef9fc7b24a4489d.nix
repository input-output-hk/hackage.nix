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
      identifier = { name = "net-spider-pangraph"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "Conversion between net-spider and pangraph";
      description = "Conversion between <https://hackage.haskell.org/package/net-spider net-spider> and <https://hackage.haskell.org/package/pangraph pangraph>. See README.md for detail.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pangraph" or (errorHandler.buildDepError "pangraph"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."net-spider-pangraph" or (errorHandler.buildDepError "net-spider-pangraph"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pangraph" or (errorHandler.buildDepError "pangraph"))
            (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
          ];
          buildable = true;
        };
      };
    };
  }