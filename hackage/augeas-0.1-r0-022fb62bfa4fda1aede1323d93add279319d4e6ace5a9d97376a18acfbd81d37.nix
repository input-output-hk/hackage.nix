{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "augeas"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jude@pwan.org";
      author = "Jude Nagurney";
      homepage = "";
      url = "";
      synopsis = "A Haskell FFI wrapper for the Augeas API";
      description = "A Haskell FFI wrapper for the Augeas API";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
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
          buildable = true;
          };
        };
      };
    }