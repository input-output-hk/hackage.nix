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
      identifier = { name = "inbox"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Kamil Dworakowski";
      maintainer = "kamil@dworakowski.name";
      author = "Kamil Dworakowski";
      homepage = "https://github.com/luntain/error-or-bundle/blob/master/inbox#readme";
      url = "";
      synopsis = "Inbox for asychronous messages";
      description = "Facilitates testing of asynchronous behavior";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."error-or" or (errorHandler.buildDepError "error-or"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }