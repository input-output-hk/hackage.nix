{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repa-io"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://trac.haskell.org/repa";
      url = "";
      synopsis = "Read and write Repa arrays in various formats.";
      description = "NOTE: You must use the GHC head branch > 6.13.20100309 to get decent performance.\nRead and write Repa arrays in various formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."repa-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "repa-bytestring"))
          (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
          ];
        buildable = true;
        };
      };
    }