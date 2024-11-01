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
      identifier = { name = "pixelated-avatar-generator"; version = "0.1.3"; };
      license = "MIT";
      copyright = "2016 Christopher Wells";
      maintainer = "cwellsny@nycap.rr.com";
      author = "Christopher Wells";
      homepage = "https://github.com/ExcaliburZero/pixelated-avatar-generator";
      url = "";
      synopsis = "A library and application for generating pixelated avatars.";
      description = "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA1AAAACABAMAAAD345WwAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AcREioaDb4fhAAAABVQTFRFKSkpaLb/lpaW0JT//4xB/+eU////Sm1svwAAAeBJREFUeNrt2bFxwzAQBEC2oBbUglpwC2zB/ZfgRHbwMzf/oKUAmr0M4IHg/IY87iXfz6zu13w1SefOZ9J62nuE1PdMezVHSde//TMHKFCgQIECBQoUKFCgQIECBQoUKFCgQIECBQrUh0GlpP4UZNpLEFPIlFWQCtNBJbg6+NV9UKBAgQIFChQoUKBAgQIFChQoUKBAgQIFChSo3aGmH1zBKkAHknod0BQywXRQHdyxmPSeVai/+0GBAgUKFChQoECBAgUKFChQoECBAgUKFChQoDaF6gC6/ZoOKIEliA6qA7qaV0N1QB0YKFCgQIECBQoUKFCgQIECBQoUKFCgQIECBQrUrlD3kg4i9evgp0B1XQd/NknnusF3sB3U6vMENu2BAgUKFChQoECBAgUKFChQoECBAgUKFChQoEB9CtRq6gV18Cmp1wFMe1OgBFYBrsLVwV8NKFCgQIECBQoUKFCgQIECBQoUKFCgQIECBQrU7lD1og4k7SeQKeBZcrX/CEkw7/5x+DvwtO56oECBAgUKFChQoECBAgUKFChQoECBAgUKFChQu0JNAVZhOqjpj8MpYAfbQaVzdfBHk3TuFpKgakCBAgUKFChQoECBAgUKFChQoECBAgUKFChQoDaF+gF8d9lnmZmUZAAAAABJRU5ErkJggg==>>\n\nPixelated Avatar Generator is a library and application\nfor generating pixelated avatar images from seed strings.";
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
            (hsPkgs."cli" or (errorHandler.buildDepError "cli"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
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