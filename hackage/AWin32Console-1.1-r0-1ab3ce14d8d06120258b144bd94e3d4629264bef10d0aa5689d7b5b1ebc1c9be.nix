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
      identifier = { name = "AWin32Console"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Harald Wolfsgruber";
      author = "Harald Wolfsgruber";
      homepage = "";
      url = "";
      synopsis = "A binding to a part of the ANSI escape code for the console";
      description = "ANSI escape code";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
        ];
        buildable = true;
      };
    };
  }