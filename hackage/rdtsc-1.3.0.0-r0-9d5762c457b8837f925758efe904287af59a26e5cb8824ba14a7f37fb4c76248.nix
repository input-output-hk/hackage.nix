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
      identifier = { name = "rdtsc"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin@grabmueller.de";
      author = "Martin Grabmueller <martin@grabmueller.de>";
      homepage = "http://code.haskell.org/rdtsc";
      url = "";
      synopsis = "Binding for the rdtsc machine instruction";
      description = "This module provides the function 'rdtsc' for accessing\nthe 'rdtsc' machine register on modern IA-32 processors.  This is\na 64-bit counter which counts the number of processor cycles since\nthe machine has been powered up.  Using this instruction, you can\nmake very precise time measurements which are independent of the\nactual CPU frequency.  But note that you can get strange results\nsometimes on a superscalar processor.\n\nAlso note that the Haskell foreign function interface imposes some\nadditional overheads.  On my machine, it takes about 950 cycles to\ncall this function twice and to compute the difference, whereas in\nC the overhead is only about 88 cycles.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }