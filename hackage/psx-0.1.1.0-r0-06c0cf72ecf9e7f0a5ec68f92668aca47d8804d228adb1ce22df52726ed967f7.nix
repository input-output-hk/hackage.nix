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
    flags = { bundled-libpsx = true; werror = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "psx"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Nicolas Trangez";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "https://github.com/NicolasT/landlock-hs";
      url = "";
      synopsis = "Integrate libpsx with the GHC RTS";
      description = "This library embeds @libpsx@ in a GHC Haskell-compiled application.\n\nNote @libpsx@ performs some trickery with signal handling in a process.\nFurthermore, when using this library, @sigfillset@ will be wrapped so\n@SIGSYS@ is /not/ set, in order for the GHC RTS @ticker@ thread not to\nblock the signal and work properly with @libpsx@.\n\n__Warning:__ @libpsx@ on current Ubuntu and Debian systems (from @libcap@\n2.44) is broken. Hence, this library contains a bundled version of @libpsx@\nby default. Disable the @bundled-libpsx@ flag to use a system-provided\nversion of the library, which must be from @libcap@ version 2.46 or higher.\nThe license of the bundled library can be found in @cbits\\/psx\\/License@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        pkgconfig = pkgs.lib.optional (!flags.bundled-libpsx) (pkgconfPkgs."libpsx" or (errorHandler.pkgConfDepError "libpsx"));
        buildable = true;
      };
      tests = {
        "psx-test-threaded" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."psx" or (errorHandler.buildDepError "psx"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "psx-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."psx" or (errorHandler.buildDepError "psx"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "psx-test-no-psx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }