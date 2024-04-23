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
      identifier = { name = "KiCS-prophecy"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Bernd Braßel";
      author = "Bernd Braßel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "a transformation used by the kics debugger ";
      description = "This package contains a transformation of the debugger\nfor the Curry to Haskell compiler \"kics\".";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."KiCS" or (errorHandler.buildDepError "KiCS"))
        ];
        buildable = true;
      };
      exes = {
        "prophecy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."KiCS" or (errorHandler.buildDepError "KiCS"))
          ];
          buildable = true;
        };
      };
    };
  }