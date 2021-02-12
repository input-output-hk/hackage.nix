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
      identifier = { name = "cairo-core"; version = "1.16.6"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "magiclouds@gmail.com";
      author = "Magicloud";
      homepage = "https://github.com/magicloud/cairo-core#readme";
      url = "";
      synopsis = "Cairo Haskell binding (partial)";
      description = "For using Cairo in Haskell. Functions/Types for X11, Windows, MacOS are not included.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.haskell-src-exts or (pkgs.buildPackages.haskell-src-exts or (errorHandler.setupDepError "haskell-src-exts")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client or (errorHandler.setupDepError "http-client")))
        (hsPkgs.buildPackages.http-client-tls or (pkgs.buildPackages.http-client-tls or (errorHandler.setupDepError "http-client-tls")))
        (hsPkgs.buildPackages.hxt or (pkgs.buildPackages.hxt or (errorHandler.setupDepError "hxt")))
        (hsPkgs.buildPackages.hxt-xpath or (pkgs.buildPackages.hxt-xpath or (errorHandler.setupDepError "hxt-xpath")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.setupDepError "bytestring")))
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
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }