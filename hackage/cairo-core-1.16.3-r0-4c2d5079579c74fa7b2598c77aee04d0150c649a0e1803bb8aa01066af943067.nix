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
      specVersion = "2.0";
      identifier = { name = "cairo-core"; version = "1.16.3"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "magiclouds@gmail.com";
      author = "Magicloud";
      homepage = "https://github.com/magicloud/cairo-core#readme";
      url = "";
      synopsis = "Cairo Haskell binding (core functions)";
      description = "Cairo Haskell binding (core functions). Please checkout cairo-opts for other functions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.haskell-src-exts or (pkgs.pkgsBuildBuild.haskell-src-exts or (errorHandler.setupDepError "haskell-src-exts")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.http-client or (pkgs.pkgsBuildBuild.http-client or (errorHandler.setupDepError "http-client")))
        (hsPkgs.pkgsBuildBuild.http-client-tls or (pkgs.pkgsBuildBuild.http-client-tls or (errorHandler.setupDepError "http-client-tls")))
        (hsPkgs.pkgsBuildBuild.hxt or (pkgs.pkgsBuildBuild.hxt or (errorHandler.setupDepError "hxt")))
        (hsPkgs.pkgsBuildBuild.hxt-xpath or (pkgs.pkgsBuildBuild.hxt-xpath or (errorHandler.setupDepError "hxt-xpath")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-extras" or (errorHandler.buildDepError "monad-extras"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        pkgconfig = [
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }