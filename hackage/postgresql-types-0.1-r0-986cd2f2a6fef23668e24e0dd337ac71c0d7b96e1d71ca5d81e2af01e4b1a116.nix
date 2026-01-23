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
      specVersion = "3.0";
      identifier = { name = "postgresql-types"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2025, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/postgresql-types";
      url = "";
      synopsis = "Precise PostgreSQL types representation and driver-agnostic codecs";
      description = "This package provides a Haskell representation of PostgreSQL data types, with mappings to and from both binary and textual formats of the PostgreSQL wire protocol. The types are implemented in their canonical forms, directly corresponding to their PostgreSQL counterparts. The philosophy is that nuance matters, so all special values are represented without data loss or compromise.\n\nThe types presented by this package do not necessarily have direct mappings to common Haskell types. Canonicalizing conversions and smart constructors are provided to address this.\n\nFor example, any @text@ value from PostgreSQL produces a valid 'Data.Text.Text' value in Haskell, but not every Haskell 'Data.Text.Text' value produces a valid PostgreSQL @text@, because PostgreSQL does not allow NUL bytes in text fields, whereas Haskell's 'Data.Text.Text' does. In the case of dates, the supported date ranges may differ between PostgreSQL and Haskell's \"time\" library. Therefore, conversions between these types and common Haskell types may be partial and may fail if the data cannot be represented in the target type.\n\nAll types supply 'Test.QuickCheck.Arbitrary' instances that cover the full range of valid PostgreSQL values. Every type is property-tested to validate round-trip conversions between binary and textual formats against PostgreSQL versions 9 to 18.\n\nThe library can be used as the basis for various PostgreSQL libraries. Ecosystem integration adapters are available for:\n\n* hasql: <https://hackage.haskell.org/package/hasql-postgresql-types>\n\n* postgresql-simple: <https://hackage.haskell.org/package/postgresql-simple-postgresql-types>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
          (hsPkgs."jsonifier" or (errorHandler.buildDepError "jsonifier"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."postgresql-types".components.sublibs.base-extras or (errorHandler.buildDepError "postgresql-types:base-extras"))
          (hsPkgs."postgresql-types".components.sublibs.jsonifier-aeson or (errorHandler.buildDepError "postgresql-types:jsonifier-aeson"))
          (hsPkgs."postgresql-types".components.sublibs.time-extras or (errorHandler.buildDepError "postgresql-types:time-extras"))
          (hsPkgs."postgresql-types-algebra" or (errorHandler.buildDepError "postgresql-types-algebra"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
          (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
          (hsPkgs."quickcheck-extras" or (errorHandler.buildDepError "quickcheck-extras"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      sublibs = {
        "jsonifier-aeson" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsonifier" or (errorHandler.buildDepError "jsonifier"))
          ];
          buildable = true;
        };
        "time-extras" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "base-extras" = { buildable = true; };
        "pq-procedures" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-types" or (errorHandler.buildDepError "postgresql-types"))
            (hsPkgs."postgresql-types-algebra" or (errorHandler.buildDepError "postgresql-types-algebra"))
            (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
            (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "integration-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-types" or (errorHandler.buildDepError "postgresql-types"))
            (hsPkgs."postgresql-types".components.sublibs.pq-procedures or (errorHandler.buildDepError "postgresql-types:pq-procedures"))
            (hsPkgs."postgresql-types-algebra" or (errorHandler.buildDepError "postgresql-types-algebra"))
            (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
            (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."testcontainers-postgresql" or (errorHandler.buildDepError "testcontainers-postgresql"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
          buildable = true;
        };
      };
    };
  }