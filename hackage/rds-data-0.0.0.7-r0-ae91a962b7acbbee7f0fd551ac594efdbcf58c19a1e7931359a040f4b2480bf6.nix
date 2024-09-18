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
      specVersion = "3.6";
      identifier = { name = "rds-data"; version = "0.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2024 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/rds-data#readme";
      url = "";
      synopsis = "Codecs for use with AWS rds-data";
      description = "Codecs for use with AWS rds-data.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "codecs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-rds" or (errorHandler.buildDepError "amazonka-rds"))
            (hsPkgs."amazonka-rds-data" or (errorHandler.buildDepError "amazonka-rds-data"))
            (hsPkgs."amazonka-secretsmanager" or (errorHandler.buildDepError "amazonka-secretsmanager"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
        "polysemy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-rds-data" or (errorHandler.buildDepError "amazonka-rds-data"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hw-polysemy".components.sublibs.amazonka or (errorHandler.buildDepError "hw-polysemy:amazonka"))
            (hsPkgs."hw-polysemy".components.sublibs.core or (errorHandler.buildDepError "hw-polysemy:core"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."rds-data".components.sublibs.codecs or (errorHandler.buildDepError "rds-data:codecs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
        "testlib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-rds" or (errorHandler.buildDepError "amazonka-rds"))
            (hsPkgs."amazonka-rds-data" or (errorHandler.buildDepError "amazonka-rds-data"))
            (hsPkgs."amazonka-secretsmanager" or (errorHandler.buildDepError "amazonka-secretsmanager"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hw-polysemy".components.sublibs.amazonka or (errorHandler.buildDepError "hw-polysemy:amazonka"))
            (hsPkgs."hw-polysemy".components.sublibs.core or (errorHandler.buildDepError "hw-polysemy:core"))
            (hsPkgs."hw-polysemy".components.sublibs.hedgehog or (errorHandler.buildDepError "hw-polysemy:hedgehog"))
            (hsPkgs."hw-polysemy".components.sublibs.testcontainers-localstack or (errorHandler.buildDepError "hw-polysemy:testcontainers-localstack"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."rds-data".components.sublibs.codecs or (errorHandler.buildDepError "rds-data:codecs"))
            (hsPkgs."rds-data".components.sublibs.polysemy or (errorHandler.buildDepError "rds-data:polysemy"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
      exes = {
        "rds-data" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-rds-data" or (errorHandler.buildDepError "amazonka-rds-data"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."hw-polysemy".components.sublibs.amazonka or (errorHandler.buildDepError "hw-polysemy:amazonka"))
            (hsPkgs."hw-polysemy".components.sublibs.core or (errorHandler.buildDepError "hw-polysemy:core"))
            (hsPkgs."hw-polysemy".components.sublibs.hedgehog or (errorHandler.buildDepError "hw-polysemy:hedgehog"))
            (hsPkgs."hw-polysemy".components.sublibs.testcontainers-localstack or (errorHandler.buildDepError "hw-polysemy:testcontainers-localstack"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."rds-data".components.sublibs.codecs or (errorHandler.buildDepError "rds-data:codecs"))
            (hsPkgs."rds-data".components.sublibs.polysemy or (errorHandler.buildDepError "rds-data:polysemy"))
            (hsPkgs."rds-data".components.sublibs.testlib or (errorHandler.buildDepError "rds-data:testlib"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."testcontainers" or (errorHandler.buildDepError "testcontainers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
      tests = {
        "rds-data-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."amazonka-rds-data" or (errorHandler.buildDepError "amazonka-rds-data"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-extras" or (errorHandler.buildDepError "hedgehog-extras"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."rds-data".components.sublibs.codecs or (errorHandler.buildDepError "rds-data:codecs"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
        "rds-data-integration" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-rds" or (errorHandler.buildDepError "amazonka-rds"))
            (hsPkgs."amazonka-rds-data" or (errorHandler.buildDepError "amazonka-rds-data"))
            (hsPkgs."amazonka-secretsmanager" or (errorHandler.buildDepError "amazonka-secretsmanager"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-extras" or (errorHandler.buildDepError "hedgehog-extras"))
            (hsPkgs."hw-polysemy".components.sublibs.amazonka or (errorHandler.buildDepError "hw-polysemy:amazonka"))
            (hsPkgs."hw-polysemy".components.sublibs.core or (errorHandler.buildDepError "hw-polysemy:core"))
            (hsPkgs."hw-polysemy".components.sublibs.hedgehog or (errorHandler.buildDepError "hw-polysemy:hedgehog"))
            (hsPkgs."hw-polysemy".components.sublibs.testcontainers-localstack or (errorHandler.buildDepError "hw-polysemy:testcontainers-localstack"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."rds-data".components.sublibs.codecs or (errorHandler.buildDepError "rds-data:codecs"))
            (hsPkgs."rds-data".components.sublibs.polysemy or (errorHandler.buildDepError "rds-data:polysemy"))
            (hsPkgs."rds-data".components.sublibs.testlib or (errorHandler.buildDepError "rds-data:testlib"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."testcontainers" or (errorHandler.buildDepError "testcontainers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }