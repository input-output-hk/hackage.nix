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
      identifier = { name = "xml2html"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "blaze-html instances for xml-conduit types (deprecated)";
      description = "blaze-html instances for xml-conduit types. Note that these instances are now provided by xml-conduit itself, and therefore this package is unnecessary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ];
        buildable = true;
      };
    };
  }