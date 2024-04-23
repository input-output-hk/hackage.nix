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
      identifier = { name = "rz-pipe"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Florian Märkl <rizin@metallic.software>";
      author = "rizinorg";
      homepage = "";
      url = "";
      synopsis = "Pipe interface for Rizin";
      description = "rz-pipe is a scripting interface for the Rizin Reverse Engineering\nFramework that builds upon Rizin's command interface as a simple\npoint of interaction.\n\nIt can be used by launching a Rizin instance from Haskell or\nconnecting to an existing one using pipes or HTTP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rz-pipe" or (errorHandler.buildDepError "rz-pipe"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
    };
  }