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
      identifier = { name = "shake-persist"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Dmitry Bogatov";
      maintainer = "Dmitry Bogatov <KAction@gnu.org>";
      author = "Dmitry Bogatov";
      homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-shake-persist.git";
      url = "";
      synopsis = "Shake build system on-disk caching";
      description = "Please see Development.Shake.Persist and example in source.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "ex.shake-persist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shake-persist" or (errorHandler.buildDepError "shake-persist"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          ];
          buildable = true;
        };
      };
    };
  }