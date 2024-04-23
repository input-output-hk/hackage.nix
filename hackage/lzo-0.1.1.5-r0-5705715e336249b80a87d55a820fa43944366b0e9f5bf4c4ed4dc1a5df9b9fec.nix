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
    flags = { cross = false; pure = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "lzo"; version = "0.1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020, 2022 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "minilzo bundled for Haskell";
      description = "A small library wrapping minilzo allowing lzop compression in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."digest-sig" or (errorHandler.buildDepError "digest-sig"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ] ++ (if flags.pure
          then [
            (hsPkgs."digest-pure" or (errorHandler.buildDepError "digest-pure"))
          ]
          else [ (hsPkgs."digest" or (errorHandler.buildDepError "digest")) ]);
        build-tools = pkgs.lib.optional (!flags.cross) (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
      };
      tests = {
        "lzo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lzo" or (errorHandler.buildDepError "lzo"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "lzo-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lzo" or (errorHandler.buildDepError "lzo"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }