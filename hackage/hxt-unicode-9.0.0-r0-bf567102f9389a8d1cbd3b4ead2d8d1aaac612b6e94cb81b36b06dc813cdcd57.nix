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
      identifier = { name = "hxt-unicode"; version = "9.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010- Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings";
      description = "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,\nused in the Haskell XML Toolbox.\nISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding\nis done with lasy functions, errors may be detected or ignored.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          ];
        buildable = true;
        };
      };
    }