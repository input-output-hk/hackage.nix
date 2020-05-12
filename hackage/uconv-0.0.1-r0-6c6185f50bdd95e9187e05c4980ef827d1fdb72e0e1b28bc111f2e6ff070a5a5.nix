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
    flags = { bytestring_in_base = true; };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "uconv"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "String encoding conversion with ICU";
      description = "Provides an interface to ICU's uconv library function\nfor string encoding conversion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.bytestring_in_base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
        libs = [ (pkgs."icuuc" or (errorHandler.sysDepError "icuuc")) ];
        buildable = true;
        };
      };
    }