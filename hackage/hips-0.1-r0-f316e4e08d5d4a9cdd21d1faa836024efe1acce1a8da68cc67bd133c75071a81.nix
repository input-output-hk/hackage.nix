{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hips"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrick@parcs.ath.cx";
      author = "Patrick Palka";
      homepage = "http://closure.ath.cx/hips";
      url = "";
      synopsis = "an IPS patcher";
      description = "a program that patches files with patches of the IPS format";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hips" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."functors" or ((hsPkgs.pkgs-errors).buildDepError "functors"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }