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
      identifier = { name = "hxt-tagsoup"; version = "9.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2016 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "https://github.com/UweSchmidt/hxt";
      url = "";
      synopsis = "TagSoup parser for HXT";
      description = "The Tagsoup interface for the HXT lazy HTML parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          (hsPkgs."hxt-unicode" or (errorHandler.buildDepError "hxt-unicode"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
        ];
        buildable = true;
      };
    };
  }