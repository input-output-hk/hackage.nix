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
      identifier = { name = "FTPLine"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/FTPLine";
      url = "";
      synopsis = "A command-line FTP client.";
      description = "A command-line FTP client. Type @help@ for a list of commands. Online documentation at the homepage.\n\nChanges from last version:\n\n* State becomes a record (was a tuple).\n\n* File content changes from @String@ to @ByteString@.\n\n* Added modes (local and remote).\n\n* Changed lazy state to strict state,\nand it has been instantiated at haskeline's @MonadException@ class.\n\n* The way FTP results are shown has varied.\n\n* Memory usage has been reduced considerably.";
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