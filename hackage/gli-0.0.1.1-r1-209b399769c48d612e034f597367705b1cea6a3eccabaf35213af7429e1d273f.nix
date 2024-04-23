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
      identifier = { name = "gli"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Mrinmoy Das";
      maintainer = "mrinmoy.das91@gmail.com";
      author = "goromlagche";
      homepage = "https://github.com/goromlagche/gli#readme";
      url = "";
      synopsis = "Tiny cli to fetch PR info from gitlab";
      description = "A cli tool to fetch PR(pull request/merge request) related informations from gitlab. When someone runs this tool from inside a gitlab repository, it will list out open merge requests informations containing url, title, description, author, assignee, whether it has a WIP tag or not, status, branch name and both created_at, updated_at fields";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."friendly-time" or (errorHandler.buildDepError "friendly-time"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "gli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gli" or (errorHandler.buildDepError "gli"))
          ];
          buildable = true;
        };
      };
      tests = {
        "gli-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gli" or (errorHandler.buildDepError "gli"))
          ];
          buildable = true;
        };
      };
    };
  }