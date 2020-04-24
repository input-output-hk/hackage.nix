{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hwsl2"; version = "0.1.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/hwsl2";
      url = "";
      synopsis = "Hashing with SL2";
      description = "An algebraic hash function, inspired by the paper \"Hashing with SL2\" by Tillich and Zemor.\n\nThe hash function is based on matrix multiplication in the special linear group\nof degree 2, over a Galois field of order 2^127,  with all computations modulo\nthe polynomial x^127 + x^63 + 1.\n\nThis construction gives some nice properties, which traditional \"bit-scambling\"\nhash functions don't possess, including it being composable. It holds:\n\n> hash (m1 <> m2) == hash m1 <> hash m2\n\nAll operations in this package are implemented in a very efficient manner using SSE instructions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }