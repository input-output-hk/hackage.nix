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
      specVersion = "1.12";
      identifier = { name = "servant-seo"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Andrey Prokopenko (c) 2020";
      maintainer = "persiantiger@yandex.ru";
      author = "Andrey Prokopenko";
      homepage = "https://github.com/swamp-agr/servant-seo#readme";
      url = "";
      synopsis = "Generate Robots.txt and Sitemap.xml specification for your servant API.";
      description = "Please see the README on GitHub at <https://github.com/swamp-agr/servant-seo#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."servant-seo" or (errorHandler.buildDepError "servant-seo"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }