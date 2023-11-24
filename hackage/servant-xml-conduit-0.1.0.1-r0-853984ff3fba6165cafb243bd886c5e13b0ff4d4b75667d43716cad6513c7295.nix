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
      identifier = { name = "servant-xml-conduit"; version = "0.1.0.1"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "pk@intrepidus.pl";
      author = "Gargantext";
      homepage = "";
      url = "";
      synopsis = "Servant XML content-type with support for xml-conduit";
      description = "This is similar in spirit to `servant-xml` but uses `xml-conduit` instead of `xmlbf`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      };
    }