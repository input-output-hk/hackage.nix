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
      specVersion = "1.18";
      identifier = { name = "cpython"; version = "3.9.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Adam Zsigmond <zsedem@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://github.com/zsedem/haskell-cpython";
      url = "";
      synopsis = "Bindings for libpython";
      description = "These bindings allow Haskell code to call CPython code. It is not\ncurrently possible to call Haskell code from CPython, but this feature\nis planned.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        pkgconfig = [
          (pkgconfPkgs."python3" or (errorHandler.pkgConfDepError "python3"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "cpython-testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cpython" or (errorHandler.buildDepError "cpython"))
          ];
          pkgconfig = [
            (pkgconfPkgs."python3" or (errorHandler.pkgConfDepError "python3"))
          ];
          buildable = true;
        };
      };
    };
  }