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
      identifier = { name = "CheatSheet"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgbailey _ codeslower _ com";
      author = "Justin Bailey";
      homepage = "http://blog.codeslower.com/2008/10/The-Haskell-Cheatsheet";
      url = "";
      synopsis = "A Haskell cheat sheet in PDF and literate formats.";
      description = "This module includes a PDF giving a synopsis of Haskell syntax, keywords,\nand other essentials. It also has a literate source file which allows all\nexamples to be inspected. Download and unpack this archive to view them.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cheatsheet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }