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
      specVersion = "1.6";
      identifier = { name = "augeas"; version = "0.6.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jude@pwan.org";
      author = "Jude Nagurney";
      homepage = "http://trac.haskell.org/augeas";
      url = "http://hackage.haskell.org/packages/archive/augeas/0.6.0/augeas-0.6.0.tar.gz";
      synopsis = "A Haskell FFI wrapper for the Augeas API";
      description = "A Haskell FFI wrapper for the Augeas API";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."augeas" or (errorHandler.pkgConfDepError "augeas"))
          ];
        buildable = true;
        };
      exes = {
        "test-haskell-augeas" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          libs = [ (pkgs."augeas" or (errorHandler.sysDepError "augeas")) ];
          pkgconfig = [
            (pkgconfPkgs."augeas" or (errorHandler.pkgConfDepError "augeas"))
            ];
          buildable = true;
          };
        };
      };
    }