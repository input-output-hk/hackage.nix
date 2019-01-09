{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; benchmark-atto-bencode = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bencoding"; version = "0.4.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2018, Sam Truzjan\n(c) 2018 Sergey Vinokurov";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/sergv/bencoding";
      url = "";
      synopsis = "A library for encoding and decoding of BEncode data.";
      description = "A library for fast and easy encoding and decoding of BEncode data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.pretty)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.0")) (hsPkgs.semigroups);
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.bencoding)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "bench-comparison" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.deepseq)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.bencoding)
            (hsPkgs.bencode)
            ] ++ (pkgs.lib).optional (flags.benchmark-atto-bencode) (hsPkgs.AttoBencode);
          };
        };
      };
    }