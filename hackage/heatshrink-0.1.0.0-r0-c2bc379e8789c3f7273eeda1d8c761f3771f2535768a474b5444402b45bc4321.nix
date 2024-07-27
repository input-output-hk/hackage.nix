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
      identifier = { name = "heatshrink"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Thierry Bourrillon";
      maintainer = "thierry.bourrillon@fpinsight.com";
      author = "Thierry Bourrillon";
      homepage = "https://github.com/fpinsight/heatshrink#readme";
      url = "";
      synopsis = "Compression and decompression using heatshrink";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "heatshrink-test" = {
          depends = [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heatshrink" or (errorHandler.buildDepError "heatshrink"))
            (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }