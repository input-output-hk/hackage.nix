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
    flags = { dev = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "cabal-cache"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "John Ky 2019-2023";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/cabal-cache";
      url = "";
      synopsis = "CI Assistant for Haskell projects";
      description = "CI Assistant for Haskell projects.  Implements package caching.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."effectful-plugin" or (errorHandler.buildDepError "effectful-plugin"))
          (hsPkgs."effectful-zoo".components.sublibs.amazonka or (errorHandler.buildDepError "effectful-zoo:amazonka"))
          (hsPkgs."effectful-zoo".components.sublibs.console or (errorHandler.buildDepError "effectful-zoo:console"))
          (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
          (hsPkgs."effectful-zoo".components.sublibs.datalog or (errorHandler.buildDepError "effectful-zoo:datalog"))
          (hsPkgs."effectful-zoo".components.sublibs.lazy or (errorHandler.buildDepError "effectful-zoo:lazy"))
          (hsPkgs."effectful-zoo".components.sublibs.log or (errorHandler.buildDepError "effectful-zoo:log"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."relation" or (errorHandler.buildDepError "relation"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."resourcet-effectful" or (errorHandler.buildDepError "resourcet-effectful"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."topograph" or (errorHandler.buildDepError "topograph"))
        ];
        buildable = true;
      };
      exes = {
        "cabal-cache" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-install-parsers" or (errorHandler.buildDepError "cabal-install-parsers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-plugin" or (errorHandler.buildDepError "effectful-plugin"))
            (hsPkgs."effectful-zoo".components.sublibs.amazonka or (errorHandler.buildDepError "effectful-zoo:amazonka"))
            (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
            (hsPkgs."effectful-zoo".components.sublibs.datalog or (errorHandler.buildDepError "effectful-zoo:datalog"))
            (hsPkgs."effectful-zoo".components.sublibs.lazy or (errorHandler.buildDepError "effectful-zoo:lazy"))
            (hsPkgs."effectful-zoo".components.sublibs.log or (errorHandler.buildDepError "effectful-zoo:log"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."resourcet-effectful" or (errorHandler.buildDepError "resourcet-effectful"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cabal-cache" or (errorHandler.buildDepError "cabal-cache"))
          ];
          buildable = true;
        };
      };
      tests = {
        "cabal-cache-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-plugin" or (errorHandler.buildDepError "effectful-plugin"))
            (hsPkgs."effectful-zoo".components.sublibs.amazonka or (errorHandler.buildDepError "effectful-zoo:amazonka"))
            (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
            (hsPkgs."effectful-zoo".components.sublibs.hedgehog or (errorHandler.buildDepError "effectful-zoo:hedgehog"))
            (hsPkgs."effectful-zoo".components.sublibs.hunit or (errorHandler.buildDepError "effectful-zoo:hunit"))
            (hsPkgs."effectful-zoo".components.sublibs.lazy or (errorHandler.buildDepError "effectful-zoo:lazy"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."hedgehog-extras" or (errorHandler.buildDepError "hedgehog-extras"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."resourcet-effectful" or (errorHandler.buildDepError "resourcet-effectful"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cabal-cache" or (errorHandler.buildDepError "cabal-cache"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }