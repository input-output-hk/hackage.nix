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
    flags = { cross = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "webp"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2020 Vanessa McHale";
      maintainer = "Vanessa McHale <vamchale@gmail.com>";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "JuicyPixels support for WebP format";
      description = "Haskell library for webp format, via [c2hs](http://hackage.haskell.org/package/c2hs) and [libwebp](https://developers.google.com/speed/webp/docs/api).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libwebp" or (errorHandler.pkgConfDepError "libwebp"))
        ];
        build-tools = pkgs.lib.optional (!flags.cross) (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")));
        buildable = true;
      };
      tests = {
        "webp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."webp" or (errorHandler.buildDepError "webp"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }