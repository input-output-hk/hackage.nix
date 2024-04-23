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
      specVersion = "1.2";
      identifier = { name = "xattr"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke";
      maintainer = "Evan Klitzke <evan@eklitzke.org>";
      author = "Evan Klitzke";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to libattr";
      description = "Stuff";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }