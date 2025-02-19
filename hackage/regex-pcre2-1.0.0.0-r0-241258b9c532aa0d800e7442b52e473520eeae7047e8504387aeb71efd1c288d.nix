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
    flags = { pkg-config = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "regex-pcre2"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2025, Homebrew Holdings\nCopyright (c) 2006, Christopher Kuklewicz";
      maintainer = "Pete Ryland <pdr@piglet.ch>";
      author = "Pete Ryland, based on regex-pcre by Christopher Kuklewicz";
      homepage = "https://dev.piglet.ch/pdr/regex-pcre2";
      url = "";
      synopsis = "PCRE2 Backend for \"Text.Regex\" (regex-base)";
      description = "This package provides a <http://pcre.org/ PCRE2> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
        libs = pkgs.lib.optional (!flags.pkg-config) (pkgs."pcre2-8" or (errorHandler.sysDepError "pcre2-8"));
        pkgconfig = pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs."libpcre2-8" or (errorHandler.pkgConfDepError "libpcre2-8"));
        buildable = true;
      };
      tests = {
        "regex-pcre2-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."regex-pcre2" or (errorHandler.buildDepError "regex-pcre2"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          libs = pkgs.lib.optional (!flags.pkg-config) (pkgs."pcre2-8" or (errorHandler.sysDepError "pcre2-8"));
          pkgconfig = pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs."libpcre2-8" or (errorHandler.pkgConfDepError "libpcre2-8"));
          buildable = true;
        };
      };
    };
  }