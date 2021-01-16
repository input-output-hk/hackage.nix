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
      specVersion = "3.0";
      identifier = { name = "xml-optics"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Poscat 2021";
      maintainer = "Poscat <poscat@mail.poscat.moe>";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/xml-optics";
      url = "";
      synopsis = "Optics for xml-conduit";
      description = "Optics port of xml-lens, a collection of optics for xml-conduit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }