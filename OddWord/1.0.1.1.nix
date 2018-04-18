{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      typelitssupport = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "OddWord";
          version = "1.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2018 Robin KAY";
        maintainer = "Robin KAY <komadori@gekkou.co.uk>";
        author = "Robin KAY";
        homepage = "http://www.gekkou.co.uk/";
        url = "";
        synopsis = "Provides a wrapper for deriving word types with fewer bits.";
        description = "Provdes the 'OddWord' type, which wraps an existing integer type and\nexposes a subset of its bits as a new narrower word type. Includes\npredefined type synonyms for all the odd sized words up to 63 bits.";
        buildType = "Simple";
      };
      components = {
        OddWord = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          oddword-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.OddWord
            ];
          };
          oddword-tests-typelits = {
            depends  = optionals (_flags.typelitssupport && compiler.isGhc) [
              hsPkgs.base
              hsPkgs.OddWord
            ];
          };
        };
        benchmarks = {
          oddword-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.OddWord
            ];
          };
        };
      };
    }