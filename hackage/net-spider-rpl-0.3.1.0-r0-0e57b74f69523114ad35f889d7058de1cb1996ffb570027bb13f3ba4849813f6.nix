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
      identifier = { name = "net-spider-rpl"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "NetSpider data model and utility for RPL networks";
      description = "NetSpider data model and utility for RPL networks. See \"NetSpider.RPL\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
          (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."conduit-parse" or (errorHandler.buildDepError "conduit-parse"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."net-spider-rpl" or (errorHandler.buildDepError "net-spider-rpl"))
            (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            ];
          buildable = true;
          };
        };
      };
    }