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
      specVersion = "1.10";
      identifier = { name = "bazel-runfiles"; version = "0.7.0.1"; };
      license = "Apache-2.0";
      copyright = "2018 Tweag I/O Limited";
      maintainer = "m@tweag.io";
      author = "Tweag I/O Limited";
      homepage = "https://github.com/tweag/rules_haskell#readme";
      url = "";
      synopsis = "Locate Bazel runfiles location";
      description = "Please see the README on GitHub at <https://github.com/tweag/rules_haskell/blob/master/tools/runfiles/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
      exes = {
        "bazel-runfiles-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bazel-runfiles" or (errorHandler.buildDepError "bazel-runfiles"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }