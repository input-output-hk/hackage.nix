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
      identifier = { name = "taglib"; version = "0.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2008 by Brandon Bickford";
      maintainer = "Brandon Bickford <bickfordb@gmail.com>";
      author = "Brandon Bickford";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to TagLib";
      description = "This is a Haskell binding to TagLib.  TagLib is a popular library for reading and writing tags (ID3) of media files and getting audio properties from audio files.\nTagLib homepage: http://developer.kde.org/~wheeler/taglib.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        libs = [ (pkgs."tag_c" or (errorHandler.sysDepError "tag_c")) ];
        buildable = true;
      };
    };
  }