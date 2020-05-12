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
      identifier = { name = "fastpbkdf2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Alfredo Di Napoli";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/adinapoli/fastpbkdf2-hs#readme";
      url = "";
      synopsis = "Haskell bindings to the fastpbkdf2 C library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = if system.isWindows || system.isWindows
          then [
            (pkgs."eay32" or (errorHandler.sysDepError "eay32"))
            (pkgs."ssl32" or (errorHandler.sysDepError "ssl32"))
            ]
          else [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
        buildable = true;
        };
      tests = {
        "fastpbkdf2-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fastpbkdf2" or (errorHandler.buildDepError "fastpbkdf2"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fastpbkdf2-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fastpbkdf2" or (errorHandler.buildDepError "fastpbkdf2"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."pbkdf" or (errorHandler.buildDepError "pbkdf"))
            ];
          buildable = true;
          };
        };
      };
    }