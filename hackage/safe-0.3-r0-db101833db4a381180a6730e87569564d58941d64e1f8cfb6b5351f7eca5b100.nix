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
      specVersion = "0";
      identifier = { name = "safe"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2007-2010, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://community.haskell.org/~ndm/safe/";
      url = "";
      synopsis = "Library for safe (pattern match free) functions";
      description = "Partial functions from the base library, such as @head@ and @!!@, modified\nto return more descriptive error messages, programmer defined error messages,\n@Maybe@ wrapped results and default values.\nThese functions can be used to reduce the number of unsafe pattern matches in\nyour code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }