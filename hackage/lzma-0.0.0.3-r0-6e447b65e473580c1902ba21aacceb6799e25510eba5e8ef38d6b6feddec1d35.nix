{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lzma"; version = "0.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/lzma";
      url = "";
      synopsis = "LZMA/XZ compression and decompression";
      description = "This package provides a pure interface for compressing and\ndecompressing\n<https://en.wikipedia.org/wiki/LZMA LZMA (Lempel–Ziv–Markov chain algorithm)>\nstreams of data represented as lazy @ByteString@s. A\nmonadic incremental interface is provided as well. This package\nrelies on the <http://tukaani.org/xz/ liblzma C library>.\n\nThe following packages are based on this package and provide\nAPI support for popular streaming frameworks:\n\n* </package/lzma-streams lzma-streams> (for </package/io-streams io-streams>)\n\n* </package/pipes-lzma pipes-lzma> (for </package/pipes pipes>)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."lzma-clib" or ((hsPkgs.pkgs-errors).buildDepError "lzma-clib"));
        libs = (pkgs.lib).optional (!system.isWindows) (pkgs."lzma" or ((hsPkgs.pkgs-errors).sysDepError "lzma"));
        buildable = true;
        };
      tests = {
        "lzma-tests" = {
          depends = [
            (hsPkgs."lzma" or ((hsPkgs.pkgs-errors).buildDepError "lzma"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }