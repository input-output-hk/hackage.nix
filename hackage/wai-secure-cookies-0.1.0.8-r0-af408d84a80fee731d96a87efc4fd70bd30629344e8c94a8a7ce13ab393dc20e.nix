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
    flags = { cryptonite = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "wai-secure-cookies"; version = "0.1.0.8"; };
      license = "MIT";
      copyright = "© حبيب الأمين ‪2023";
      maintainer = "ha.alamin@gmail.com";
      author = "Habib Alamin";
      homepage = "https://github.com/habibalamin/wai-secure-cookies";
      url = "";
      synopsis = "WAI middleware to automatically encrypt and sign cookies";
      description = "wai-secure-cookies is a WAI middleware to automatically encrypt and sign cookies w/ specified keys, and a command line tool to generate those keys";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ] ++ (if flags.cryptonite
          then [
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ]
          else [
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            ]);
        buildable = true;
        };
      exes = {
        "waicookie-genkey" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            ] ++ (if flags.cryptonite
            then [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              ]
            else [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "wai-secure-cookies-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai-secure-cookies" or (errorHandler.buildDepError "wai-secure-cookies"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }