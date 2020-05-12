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
    flags = { use-libcpp = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cppfilt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/cppfilt#readme";
      url = "";
      synopsis = "Bindings for C++ demangling routines";
      description = "Please see the README on Github at <https://github.com/0xd34df00d/cppfilt#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = if flags.use-libcpp || system.isOsx
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      tests = {
        "cppfilt-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cppfilt" or (errorHandler.buildDepError "cppfilt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "cppfilt-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cppfilt" or (errorHandler.buildDepError "cppfilt"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }