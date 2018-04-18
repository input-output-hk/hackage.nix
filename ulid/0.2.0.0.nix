{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ulid";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Steve Kollmansberger";
        maintainer = "steve@kolls.net";
        author = "Steve Kollmansberger";
        homepage = "https://github.com/steven777400/ulid";
        url = "";
        synopsis = "Implementation of ULID, lexicographically sortable unique identifiers";
        description = "Implementation of alizain's ULID identifier. Canonically encoded as a 26 character string, as opposed to the 36 character UUID.\nUses Crockford's base32 for better efficiency and readability (5 bits per character)";
        buildType = "Simple";
      };
      components = {
        ulid = {
          depends  = [
            hsPkgs.base
            hsPkgs.crockford
            hsPkgs.time
            hsPkgs.crypto-api
            hsPkgs.random
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.hashable
          ];
        };
        exes = {
          ulid-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.ulid
              hsPkgs.crypto-api
            ];
          };
        };
        tests = {
          ulid-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.ulid
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.hashable
            ];
          };
        };
        benchmarks = {
          ulid-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.ulid
              hsPkgs.time
              hsPkgs.text
              hsPkgs.format-numbers
              hsPkgs.deepseq
            ];
          };
        };
      };
    }