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
      specVersion = "1.10";
      identifier = { name = "ulid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Steve Kollmansberger";
      maintainer = "steve@kolls.net";
      author = "Steve Kollmansberger";
      homepage = "https://github.com/steven777400/ulid";
      url = "";
      synopsis = "Implementation of ULID, lexicographically sortable unique identifiers";
      description = "Implementation of alizain's ULID identifier (https://github.com/alizain/ulid ).\nUUID can be suboptimal for many uses-cases because:\nIt isn't the most character efficient way of encoding 128 bits of randomness\nUUID v1/v2 is impractical in many environments, as it requires access to a unique, stable MAC address\nUUID v3/v5 requires a unique seed and produces randomly distributed IDs, which can cause fragmentation in many data structures\nUUID v4 provides no other information than randomness which can cause fragmentation in many data structures\nInstead, herein is proposed ULID:\n128-bit compatibility with UUID\n1.21e+24 unique ULIDs per millisecond\nLexicographically sortable!\nCanonically encoded as a 26 character string, as opposed to the 36 character UUID\nUses Crockford's base32 for better efficiency and readability (5 bits per character)\nCase insensitive\nNo special characters (URL safe)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."crockford" or (errorHandler.buildDepError "crockford"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      exes = {
        "ulid-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ulid-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
          ];
          buildable = true;
        };
      };
    };
  }