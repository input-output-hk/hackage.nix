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
      specVersion = "1.12";
      identifier = { name = "random-access-file"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/random-access-file#readme";
      url = "";
      synopsis = "Random file access methods, supporting application-level page cache.";
      description = "Please see the README on GitHub at <https://github.com/portnov/random-access-file#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."lrucaching" or (errorHandler.buildDepError "lrucaching"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
          (hsPkgs."unix-memory" or (errorHandler.buildDepError "unix-memory"))
          ];
        buildable = true;
        };
      benchmarks = {
        "random-access-file-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."lrucaching" or (errorHandler.buildDepError "lrucaching"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-access-file" or (errorHandler.buildDepError "random-access-file"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
            (hsPkgs."unix-memory" or (errorHandler.buildDepError "unix-memory"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }