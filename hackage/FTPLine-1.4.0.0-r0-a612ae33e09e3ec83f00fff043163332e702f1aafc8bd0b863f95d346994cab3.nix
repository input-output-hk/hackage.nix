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
      identifier = { name = "FTPLine"; version = "1.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "A command-line FTP client.";
      description = "A command-line FTP client. Type @help@ for a list of commands.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "FTPLine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ftphs" or (errorHandler.buildDepError "ftphs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }