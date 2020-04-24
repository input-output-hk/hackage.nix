{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hF2"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2011-2012";
      maintainer = "Marcel Fourné (hF2@bitrot.dyndns.org)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "F(2^e) math for cryptography";
      description = "A timing attack resistant F(2^e) backend, all operations on little-endian data in unboxed bit vectors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }