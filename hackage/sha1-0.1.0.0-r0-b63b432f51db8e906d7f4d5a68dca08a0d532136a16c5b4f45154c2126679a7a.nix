{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "sha1"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/sha1";
      url = "";
      synopsis = "SHA-1 Hash";
      description = "This library is a copy of cryptohash-sha1 that works on GC-managed\nbyte arrays instead of ByteString. The C code is a copied from\nthat library. If you find an issue with the C code, you should\nopen an issue on cryptohash-sha1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."bytebuild" or ((hsPkgs.pkgs-errors).buildDepError "bytebuild"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sha1" or ((hsPkgs.pkgs-errors).buildDepError "sha1"))
            (hsPkgs."natural-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "natural-arithmetic"))
            (hsPkgs."small-bytearray-builder" or ((hsPkgs.pkgs-errors).buildDepError "small-bytearray-builder"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            ];
          buildable = true;
          };
        };
      };
    }