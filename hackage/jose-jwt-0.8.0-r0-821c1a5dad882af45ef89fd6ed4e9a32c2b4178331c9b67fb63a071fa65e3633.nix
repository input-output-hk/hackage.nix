{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { doctest = true; };
    package = {
      specVersion = "1.16";
      identifier = { name = "jose-jwt"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Taylor <tekul.hs@gmail.com>";
      author = "Luke Taylor <tekul.hs@gmail.com>";
      homepage = "http://github.com/tekul/jose-jwt";
      url = "";
      synopsis = "JSON Object Signing and Encryption Library";
      description = "\nAn implementation of the JOSE suite of IETF standards\nand the closely related JWT (JSON web token) spec\n(<https://tools.ietf.org/html/rfc7519/>).\n\nBoth signed and encrypted JWTs are supported, as well as simple\nJWK keys.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).lt "8.0")) [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "8.0"
          then false
          else true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."jose-jwt" or ((hsPkgs.pkgs-errors).buildDepError "jose-jwt"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.doctest)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            ];
          buildable = if !flags.doctest then false else true;
          };
        };
      benchmarks = {
        "bench-jwt" = {
          depends = [
            (hsPkgs."jose-jwt" or ((hsPkgs.pkgs-errors).buildDepError "jose-jwt"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            ];
          buildable = true;
          };
        };
      };
    }