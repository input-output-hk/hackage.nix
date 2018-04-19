{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      bytestring-lt-0_10_4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.12";
        identifier = {
          name = "Cassava";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Johan Tibell\n(c) 2012 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
        maintainer = "Taylor Fausak";
        author = "Johan Tibell";
        homepage = "https://github.com/tfausak/cassava";
        url = "";
        synopsis = "A CSV parsing and encoding library";
        description = "This is a fork of @cassava@ that changes the problematic @bytestring--LT-0_10_4@ flag name to @bytestring-LT-0_10_4@. This allows the package to be built by Stack (as of version 1.5.1). See <https://github.com/hvr/cassava/pull/155> for more information.\n\n@cassava@ is a library for parsing and encoding [RFC 4180](https://tools.ietf.org/html/rfc4180)\ncompliant [comma-separated values (CSV)](https://en.wikipedia.org/wiki/Comma-separated_values) data,\nwhich is a textual line-oriented format commonly used for exchanging tabular data.\n\n@cassava@'s API includes support for\n\n- Index-based record-conversion\n- Name-based record-conversion\n- Typeclass directed conversion of fields and records\n- Built-in field-conversion instances for standard types\n- Customizable record-conversion instance derivation via GHC generics\n- Low-level [bytestring](https://hackage.haskell.org/package/bytestring) builders (see \"Data.Csv.Builder\")\n- Incremental decoding and encoding API (see \"Data.Csv.Incremental\")\n- Streaming API for constant-space decoding (see \"Data.Csv.Streaming\")\n\nMoreover, this library is designed to be easy to use; for instance, here's a\nvery simple example of encoding CSV data:\n\n>>> Data.Csv.encode [(\"John\",27),(\"Jane\",28)]\n\"John,27\\r\\nJane,28\\r\\n\"\n\nPlease refer to the documentation in \"Data.Csv\" and the included [README](#readme) for more usage examples.";
        buildType = "Simple";
      };
      components = {
        Cassava = {
          depends  = ((([
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.Only
          ] ++ (if _flags.bytestring-lt-0_10_4
            then [
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
            ]
            else [
              hsPkgs.bytestring
              hsPkgs.text-short
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
          ];
        };
        tests = {
          unit-tests = {
            depends  = (([
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cassava
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optionals (!compiler.isGhc) [
              hsPkgs.fail
              hsPkgs.semigroups
            ];
          };
        };
      };
    }