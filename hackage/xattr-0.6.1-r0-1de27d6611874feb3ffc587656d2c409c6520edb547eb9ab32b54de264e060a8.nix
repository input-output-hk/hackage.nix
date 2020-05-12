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
      specVersion = "1.8";
      identifier = { name = "xattr"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke, (c) 2012 by Deian Stefan, (c) 2012 by Amit Levy";
      maintainer = "Deian Stefan <deian@cs.stanford.edu>";
      author = "Evan Klitzke, Deian Stefan";
      homepage = "";
      url = "";
      synopsis = "Haskell extended file attributes interface";
      description = "Relatively low-level interface to work with extended attributes\non Unix systems. This is a fairly straightforward port of the\nAPI exposed by SGI's libattr.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        libs = (pkgs.lib).optional (!system.isOsx) (pkgs."attr" or (errorHandler.sysDepError "attr"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."xattr" or (errorHandler.buildDepError "xattr"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }