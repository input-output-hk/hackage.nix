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
      identifier = { name = "seonbi"; version = "0.3.4"; };
      license = "LGPL-2.1-only";
      copyright = "© 2018–2021 Hong Minhee";
      maintainer = "Hong Minhee <hong.minhee@gmail.com>";
      author = "Hong Minhee <hong.minhee@gmail.com>";
      homepage = "https://github.com/dahlia/seonbi";
      url = "";
      synopsis = "SmartyPants for Korean language";
      description = "Please see the README.md on GitHub at <https://github.com/dahlia/seonbi>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.http-client or (pkgs.pkgsBuildBuild.http-client or (errorHandler.setupDepError "http-client")))
        (hsPkgs.pkgsBuildBuild.temporary or (pkgs.pkgsBuildBuild.temporary or (errorHandler.setupDepError "temporary")))
        (hsPkgs.pkgsBuildBuild.text or (pkgs.pkgsBuildBuild.text or (errorHandler.setupDepError "text")))
        (hsPkgs.pkgsBuildBuild.zip or (pkgs.pkgsBuildBuild.zip or (errorHandler.setupDepError "zip")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
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
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
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
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
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
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
            (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."seonbi" or (errorHandler.buildDepError "seonbi"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }