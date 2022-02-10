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
      identifier = { name = "fpipe"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Schulz <benjamin.a.schulz@gmail.com>";
      author = "Ben Schulz <benjamin.a.schulz@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "F#-style composition and application";
      description = "Control.FPipe provides trivial F#-style composition and application, namely the full complement of right and left associative versions of the fundamental (.) and ($) operators: (\\<.), (.\\>), (\\<$), ($\\>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }