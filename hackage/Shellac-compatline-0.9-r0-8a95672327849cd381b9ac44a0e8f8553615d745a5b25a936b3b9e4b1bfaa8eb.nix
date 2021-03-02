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
    flags = { useeditline = true; usereadline = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Shellac-compatline"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://www.cs.princeton.edu/~rdockins/shellac/home/";
      url = "";
      synopsis = "\"compatline\" backend module for Shellac";
      description = "This package provides a Shellac backend which acts a thin interface\nfor the Shellac-readline or Shellac-editline packages, depending\non avaliability.  Note that this package may be compiled against\nreadline, which is licended under the GPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."Shellac" or (errorHandler.buildDepError "Shellac"))
          ] ++ (pkgs.lib).optional (flags.useeditline) (hsPkgs."Shellac-editline" or (errorHandler.buildDepError "Shellac-editline"))) ++ (pkgs.lib).optional (!flags.useeditline && flags.usereadline) (hsPkgs."Shellac-readline" or (errorHandler.buildDepError "Shellac-readline"))) ++ (pkgs.lib).optional (!flags.useeditline && !flags.usereadline) (hsPkgs."DependencyResolutionFailure" or (errorHandler.buildDepError "DependencyResolutionFailure"));
        buildable = true;
        };
      };
    }