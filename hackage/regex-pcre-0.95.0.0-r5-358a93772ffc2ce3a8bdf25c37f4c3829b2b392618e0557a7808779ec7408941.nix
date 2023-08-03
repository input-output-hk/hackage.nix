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
      identifier = { name = "regex-pcre"; version = "0.95.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "Andreas Abel";
      author = "Christopher Kuklewicz";
      homepage = "https://wiki.haskell.org/Regular_expressions";
      url = "";
      synopsis = "PCRE Backend for \"Text.Regex\" (regex-base)";
      description = "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.\n\nSee also <https://wiki.haskell.org/Regular_expressions> for more information.";
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
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
        libs = (pkgs.lib).optional (!flags.pkg-config) (pkgs."pcre" or (errorHandler.sysDepError "pcre"));
        pkgconfig = (pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."libpcre" or (errorHandler.pkgConfDepError "libpcre"));
        buildable = true;
        };
      };
    }