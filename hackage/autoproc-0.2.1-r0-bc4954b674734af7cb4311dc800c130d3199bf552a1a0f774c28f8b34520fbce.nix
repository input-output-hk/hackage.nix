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
      identifier = { name = "autoproc"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jason Dagit <dagitj@gmail.com>";
      author = "Jason Dagit";
      homepage = "https://github.com/dagit/autoproc";
      url = "";
      synopsis = "EDSL for Procmail scripts";
      description = "Autoproc is a utility which allows you to write an email filterer in an Haskell\nEDSL (embedded domain specific language); autoproc will then compile\nit down to a Procmail configuration file (.procmailrc). This file can\nthen be used with Procmail to sort and filter your email before\nyou see it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = { "autoproc" = { buildable = true; }; };
    };
  }