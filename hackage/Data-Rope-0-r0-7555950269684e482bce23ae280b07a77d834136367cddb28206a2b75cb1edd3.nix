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
      identifier = { name = "Data-Rope"; version = "0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Ropes, an alternative to (Byte)Strings.";
      description = "Ropes : an alternative to Strings,\na time and space-efficient representation of character\nstrings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }