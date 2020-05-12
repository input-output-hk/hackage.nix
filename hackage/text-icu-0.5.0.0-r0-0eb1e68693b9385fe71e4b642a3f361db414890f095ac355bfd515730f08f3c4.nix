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
      identifier = { name = "text-icu"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Bindings to the ICU library";
      description = "Haskell bindings to the International Components for\nUnicode (ICU) libraries.  These libraries provide\nrobust and full-featured Unicode services on a wide\nvariety of platforms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
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
      };
    }