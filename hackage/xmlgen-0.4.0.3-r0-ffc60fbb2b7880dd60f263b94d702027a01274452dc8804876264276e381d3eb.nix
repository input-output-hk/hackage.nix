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
    flags = { tests = false; benchmarks = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmlgen"; version = "0.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>";
      author = "Stefan Wehr, Stefan Schmidt, Johannes Weiss, David Leuschner";
      homepage = "";
      url = "";
      synopsis = "Fast XML generation library";
      description = "Library for high-performance XML generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "tests" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = if flags.tests then true else false;
          };
        "benchmarks" = {
          depends = (pkgs.lib).optional (flags.benchmarks) (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"));
          buildable = if flags.benchmarks then true else false;
          };
        };
      };
    }