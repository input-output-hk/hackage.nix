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
      identifier = { name = "rdtsc"; version = "1.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "magr@cs.tu-berlin.de";
      author = "Martin Grabmueller <magr@cs.tu-berlin.de>";
      homepage = "http://uebb.cs.tu-berlin.de/~magr/projects/rdtsc/doc/";
      url = "";
      synopsis = "Binding for the rdtsc machine instruction";
      description = "This module provides the function 'rdtsc' for accessing\nthe 'rdtsc' machine register on modern IA-32 processors.  This is\na 64-bit counter which counts the number of processor cycles since\nthe machine has been powered up.  Using this instruction, you can\nmake very precise time measurements which are independent of the\nactual CPU frequency.  But note that you can get strange results\nsometimes on a superscalar processor.\n\nAlso note that the Haskell foreign function interface imposes some\nadditional overheads.  On my machine, it takes about 950 cycles to\ncall this function twice and to compute the difference, whereas in\nC the overhead is only about 88 cycles.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }