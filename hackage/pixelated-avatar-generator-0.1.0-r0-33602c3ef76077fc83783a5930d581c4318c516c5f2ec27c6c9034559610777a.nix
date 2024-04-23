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
      identifier = { name = "pixelated-avatar-generator"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2016 Christopher Wells";
      maintainer = "cwellsny@nycap.rr.com";
      author = "Christopher Wells";
      homepage = "https://github.com/ExcaliburZero/pixelated-avatar-generator";
      url = "";
      synopsis = "A library and application for generating pixelated avatars.";
      description = "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEAAQMAAABmvDolAAAABlBMVEWWlpb///+oiwZLAAAAUElEQVRo3u3XsQ0AIAgAQfZfGhsLoxAH4L7CeLXBiF1mZjUHAADAFQAAQHX5IAAARoLzUM4AAIwF9igAAH5AkqruR6NdLgAAGAX8swAAaMACTyHw4mh6Rv4AAAAASUVORK5CYII=>>\n\nPixelated Avatar Generator is a library and application\nfor generating pixelated avatar images from seed strings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
      exes = {
        "pixelated-avatar-generator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pixelated-avatar-generator" or (errorHandler.buildDepError "pixelated-avatar-generator"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pixelated-avatar-generator" or (errorHandler.buildDepError "pixelated-avatar-generator"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }