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
      identifier = { name = "shelly"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Petr Rockai, Greg Weber";
      homepage = "http://github.com/gregwebs/shelly";
      url = "";
      synopsis = "shell-like (systems) programming in Haskell";
      description = "Shelly is a package provides a single module for convenient\nsystems programming in Haskell, similar in spirit to POSIX\nshells.\n\n* Shelly is aimed at getting things done rather than\nbeing a demonstration of elegance.\n\n* Shelly maintains its own environment, making it thread-safe.\n\nThese are in contrast to HSH. Elegance in HSH comes from polymorphic input and output.\nIf you want a data type other than Text as the result running a system command, you may want to use HSH.\n\nShelly is a fork of Shellish that features low memory usage, text, system-filepath, and fixes a handle draining bug.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          ];
        buildable = true;
        };
      };
    }