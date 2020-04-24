{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "augeas"; version = "0.3.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jude@pwan.org";
      author = "Jude Nagurney";
      homepage = "http://trac.haskell.org/augeas";
      url = "http://hackage.haskell.org/packages/archive/augeas/0.3.3/augeas-0.3.3.tar.gz";
      synopsis = "A Haskell FFI wrapper for the Augeas API";
      description = "A Haskell FFI wrapper for the Augeas API";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."augeas" or ((hsPkgs.pkgs-errors).pkgConfDepError "augeas"))
          ];
        buildable = true;
        };
      exes = {
        "test-haskell-augeas" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          libs = [
            (pkgs."augeas" or ((hsPkgs.pkgs-errors).sysDepError "augeas"))
            ];
          pkgconfig = [
            (pkgconfPkgs."augeas" or ((hsPkgs.pkgs-errors).pkgConfDepError "augeas"))
            ];
          buildable = true;
          };
        };
      };
    }