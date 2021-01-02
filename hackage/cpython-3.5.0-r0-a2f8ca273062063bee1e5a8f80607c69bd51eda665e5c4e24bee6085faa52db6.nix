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
    flags = { usepython38 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cpython"; version = "3.5.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Adam Zsigmond <zsedem@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://github.com/zsedem/haskell-cpython";
      url = "";
      synopsis = "Bindings for libpython";
      description = "These bindings allow Haskell code to call CPython code. It is not\ncurrently possible to call Haskell code from CPython, but this feature\nis planned.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        pkgconfig = if flags.usepython38
          then [
            (pkgconfPkgs."python-3.8" or (errorHandler.pkgConfDepError "python-3.8"))
            ]
          else [
            (pkgconfPkgs."python3" or (errorHandler.pkgConfDepError "python3"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
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
          libs = (pkgs.lib).optional (flags.usepython38) (pkgs."python3.8" or (errorHandler.sysDepError "python3.8"));
          pkgconfig = if flags.usepython38
            then [
              (pkgconfPkgs."python-3.8" or (errorHandler.pkgConfDepError "python-3.8"))
              ]
            else [
              (pkgconfPkgs."python3" or (errorHandler.pkgConfDepError "python3"))
              ];
          buildable = true;
          };
        };
      };
    }