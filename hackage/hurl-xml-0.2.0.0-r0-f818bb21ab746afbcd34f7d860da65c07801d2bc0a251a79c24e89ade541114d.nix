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
      specVersion = "1.10";
      identifier = { name = "hurl-xml"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "alcinnz@lavabit.com";
      author = "Adrian Cochrane";
      homepage = "https://rhapsode.adrian.geek.nz/";
      url = "";
      synopsis = "Fetch parsed XML & possibly CSS for a URL based on MIMEtype.";
      description = "API bindings between HURL, XML-Conduit, & Haskell Stylist. Supports HTML, XML, Gemini, TSV, CSV, or plaintext files. Can automatically extract & apply CSS stylesheets if Haskell Stylist is used, in which case CSS files cause the previous page to get restyled.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."html-conduit" or (errorHandler.buildDepError "html-conduit"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."hurl" or (errorHandler.buildDepError "hurl"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."xml-conduit-stylist" or (errorHandler.buildDepError "xml-conduit-stylist"))
          ];
        buildable = true;
        };
      };
    }