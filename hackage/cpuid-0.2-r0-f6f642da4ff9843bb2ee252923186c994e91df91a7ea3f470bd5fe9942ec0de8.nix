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
      specVersion = "1.2";
      identifier = { name = "cpuid"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "magr@cs.tu-berlin.de";
      author = "Martin Grabmueller <magr@cs.tu-berlin.de>";
      homepage = "http://uebb.cs.tu-berlin.de/~magr/projects/cpuid/doc/";
      url = "";
      synopsis = "Binding for the cpuid machine instruction on x86 compatible\nprocessors";
      description = "This module provides the function 'cpuid' for accessing\ninformation about the currently running IA-32 processor.  Both a function\nfor calling the 'cpuid' instruction directly, and some convenience functions\nfor common uses are provided.  This package is only portable to IA-32\nmachines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }