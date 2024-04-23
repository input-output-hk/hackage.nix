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
      identifier = { name = "geek-server"; version = "1.0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/geek";
      url = "";
      synopsis = "Geek blog engine server";
      description = "A dynamic blog engine, customizable with standard web technology, i.e. HTML, CSS and Javascript (JSON)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."air" or (errorHandler.buildDepError "air"))
          (hsPkgs."hack2-handler-snap-server" or (errorHandler.buildDepError "hack2-handler-snap-server"))
          (hsPkgs."geek" or (errorHandler.buildDepError "geek"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."hack2" or (errorHandler.buildDepError "hack2"))
        ];
        buildable = true;
      };
      exes = {
        "geek" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."air" or (errorHandler.buildDepError "air"))
            (hsPkgs."hack2-handler-snap-server" or (errorHandler.buildDepError "hack2-handler-snap-server"))
            (hsPkgs."geek" or (errorHandler.buildDepError "geek"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."hack2" or (errorHandler.buildDepError "hack2"))
          ];
          buildable = true;
        };
      };
    };
  }