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
      identifier = { name = "shellish"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "http://repos.mornfall.net/shellish";
      url = "";
      synopsis = "shell-/perl- like (systems) programming in Haskell";
      description = "The shellisg package provides a single module for convenient\n\\\"systems\\\" programming in Haskell, similar in spirit to POSIX\nshells or PERL.\n\n* Elegance and safety is sacrificed for conciseness and\nswiss-army-knife-ness.\n\n* The interface exported by Shellish is thread-safe.\n\nOverall, the module should help you to get a job done quickly,\nwithout getting too dirty.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
        ];
        buildable = true;
      };
    };
  }