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
      identifier = { name = "text-icu-translit"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2014 Antonio Nikishaev";
      maintainer = "Antonio Nikishaev <me@lelf.lu>";
      author = "Antonio Nikishaev";
      homepage = "";
      url = "";
      synopsis = "ICU transliteration";
      description = "Bindings to the transliteration features by the\nInternational Components for Unicode (ICU) library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [
          (pkgs."icuuc" or (errorHandler.sysDepError "icuuc"))
        ] ++ (if system.isWindows
          then [
            (pkgs."icuin" or (errorHandler.sysDepError "icuin"))
            (pkgs."icudt" or (errorHandler.sysDepError "icudt"))
          ]
          else [
            (pkgs."icui18n" or (errorHandler.sysDepError "icui18n"))
            (pkgs."icudata" or (errorHandler.sysDepError "icudata"))
          ]);
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."text-icu-translit" or (errorHandler.buildDepError "text-icu-translit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }