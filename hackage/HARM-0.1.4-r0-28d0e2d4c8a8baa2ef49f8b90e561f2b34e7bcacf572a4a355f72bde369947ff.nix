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
      identifier = { name = "HARM"; version = "0.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Alex Mason (axman6@gmail.com)";
      author = "Jeffrey A. Meunier (and Alex Mason)";
      homepage = "http://www.engr.uconn.edu/~jeffm/Classes/CSE240-Spring-2001/Lectures/index.html";
      url = "";
      synopsis = "A simple ARM emulator in haskell";
      description = "A simple ARM virtual machine designed for teaching\nassembly. See\nhttp://tinyurl.com/639v6u for details on internals and\nexamples of how to use it. It is advised you look through the\nsource on the site and try following along to really learn\nwhat's going on. Currently the emulator does not use standard\nARM assembly, but a custom variant. This will hopefully be\nchanged in the near future.\n\nTwo programs, runarm and dbgarm, are provided which can be\nused to run and debug the assembly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "runarm" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "dbgarm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }