{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-lt-0_10_4 = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "Cassava"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Johan Tibell\n(c) 2012 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "hvr@gnu.org";
      author = "Johan Tibell";
      homepage = "https://github.com/hvr/cassava";
      url = "";
      synopsis = "A CSV parsing and encoding library";
      description = "@cassava@ is a library for parsing and encoding [RFC 4180](https://tools.ietf.org/html/rfc4180)\ncompliant [comma-separated values (CSV)](https://en.wikipedia.org/wiki/Comma-separated_values) data,\nwhich is a textual line-oriented format commonly used for exchanging tabular data.\n\n@cassava@'s API includes support for\n\n- Index-based record-conversion\n- Name-based record-conversion\n- Typeclass directed conversion of fields and records\n- Built-in field-conversion instances for standard types\n- Customizable record-conversion instance derivation via GHC generics\n- Low-level [bytestring](https://hackage.haskell.org/package/bytestring) builders (see \"Data.Csv.Builder\")\n- Incremental decoding and encoding API (see \"Data.Csv.Incremental\")\n- Streaming API for constant-space decoding (see \"Data.Csv.Streaming\")\n\nMoreover, this library is designed to be easy to use; for instance, here's a\nvery simple example of encoding CSV data:\n\n>>> Data.Csv.encode [(\"John\",27),(\"Jane\",28)]\n\"John,27\\r\\nJane,28\\r\\n\"\n\nPlease refer to the documentation in \"Data.Csv\" and the included [README](#readme) for more usage examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."Only" or ((hsPkgs.pkgs-errors).buildDepError "Only"))
          ] ++ (if flags.bytestring-lt-0_10_4
          then [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
            ]
          else [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = (([
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cassava" or ((hsPkgs.pkgs-errors).buildDepError "Cassava"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
            (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            ];
          buildable = true;
          };
        };
      };
    }