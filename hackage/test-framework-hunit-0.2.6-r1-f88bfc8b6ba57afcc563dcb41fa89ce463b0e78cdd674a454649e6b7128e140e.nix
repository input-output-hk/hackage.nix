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
    flags = { base4 = true; base3 = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "test-framework-hunit"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://batterseapower.github.com/test-framework/";
      url = "";
      synopsis = "HUnit support for the test-framework package.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          ] ++ (if flags.base3
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else (pkgs.lib).optional (flags.base4) (hsPkgs."base" or (errorHandler.buildDepError "base")));
        buildable = true;
        };
      };
    }