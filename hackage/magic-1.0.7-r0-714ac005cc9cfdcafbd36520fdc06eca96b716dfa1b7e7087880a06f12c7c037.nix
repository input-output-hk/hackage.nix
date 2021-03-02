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
      specVersion = "1.0";
      identifier = { name = "magic"; version = "1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Interface to C file/magic library";
      description = "This package provides a Haskell interface to the C libmagic library.\nWith it, you can determine the type of a file by examining its contents\nrather than its name.  The Haskell interface provides a full-featured\nbinding.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."magic" or (errorHandler.sysDepError "magic")) ];
        buildable = true;
        };
      };
    }