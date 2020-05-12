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
      identifier = { name = "linux-ptrace"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "zygoloid@metafoo.co.uk";
      author = "Richard Smith";
      homepage = "";
      url = "";
      synopsis = "Wrapping of Linux' ptrace(2).";
      description = "An interface for using ptrace to inspect the state of other processes, under Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."posix-waitpid" or (errorHandler.buildDepError "posix-waitpid"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          ];
        buildable = true;
        };
      };
    }