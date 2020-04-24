{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unittest = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cryptohash"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez";
      homepage = "";
      url = "";
      synopsis = "crypto hashes fast and pratical";
      description = "Efficient crypto hash computation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.unittest then true else false;
          };
        };
      };
    }