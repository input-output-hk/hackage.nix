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
      specVersion = "1.8";
      identifier = { name = "LazyVault"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013 Kevin van Rooijen";
      maintainer = "kevin.van.rooijen@gmail.com";
      author = "Kevin van Rooijen";
      homepage = "https://github.com/kwrooijen/lazyvault";
      url = "";
      synopsis = "A simple sandboxing tool for Haskell packages.";
      description = "LazyVault is a sandboxing tool to install libraries and executables with a sandboxed environment. At the moment it's only supported under Unix or Gnu Systems. This package has only been tested under Gnu/Linux however. This program creates cabal sandboxes which you can use globally. For a detailed explaination on how this works refer to the README file found on the github page.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LazyVault" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }