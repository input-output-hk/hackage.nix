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
    flags = { embed-dictionary = false; iconv = false; static = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "seonbi"; version = "0.1.1"; };
      license = "LGPL-2.1-only";
      copyright = "© 2018–2019 Hong Minhee";
      maintainer = "Hong Minhee <hong.minhee@gmail.com>";
      author = "Hong Minhee <hong.minhee@gmail.com>";
      homepage = "https://github.com/dahlia/seonbi";
      url = "";
      synopsis = "SmartyPants for Korean language";
      description = "Please see the README.md on GitHub at <https://github.com/dahlia/seonbi>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.setupDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client or (errorHandler.setupDepError "http-client")))
        (hsPkgs.buildPackages.temporary or (pkgs.buildPackages.temporary or (errorHandler.setupDepError "temporary")))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text or (errorHandler.setupDepError "text")))
        (hsPkgs.buildPackages.zip or (pkgs.buildPackages.zip or (errorHandler.setupDepError "zip")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-trie" or (errorHandler.buildDepError "text-trie"))
          ];
        buildable = true;
        };
      exes = {
        "seonbi" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.iconv
            then [
              (hsPkgs."cases" or (errorHandler.buildDepError "cases"))
              (hsPkgs."html-charset" or (errorHandler.buildDepError "html-charset"))
              (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
              (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
              (hsPkgs."seonbi" or (errorHandler.buildDepError "seonbi"))
              ]
            else [
              (hsPkgs."cases" or (errorHandler.buildDepError "cases"))
              (hsPkgs."html-charset" or (errorHandler.buildDepError "html-charset"))
              (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
              (hsPkgs."seonbi" or (errorHandler.buildDepError "seonbi"))
              ]);
          buildable = true;
          };
        "seonbi-api" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."seonbi" or (errorHandler.buildDepError "seonbi"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."seonbi" or (errorHandler.buildDepError "seonbi"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."seonbi" or (errorHandler.buildDepError "seonbi"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }