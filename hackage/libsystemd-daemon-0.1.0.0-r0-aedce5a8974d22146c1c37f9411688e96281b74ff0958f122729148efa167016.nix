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
    flags = { usepkgconfig = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libsystemd-daemon"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Cedric Staub <cs+hs@cssx.cc>";
      author = "Cedric Staub <cs+hs@cssx.cc>";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libsystemd-daemon.";
      description = "Haskell bindings for libsystemd-daemon.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        libs = [
          (pkgs."systemd-daemon" or (errorHandler.sysDepError "systemd-daemon"))
        ];
        pkgconfig = pkgs.lib.optional (flags.usepkgconfig) (pkgconfPkgs."libsystemd-daemon" or (errorHandler.pkgConfDepError "libsystemd-daemon"));
        buildable = true;
      };
      tests = {
        "run-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libsystemd-daemon" or (errorHandler.buildDepError "libsystemd-daemon"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }