{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsseccomp"; version = "0.2.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "tehunger@gmail.com";
      author = "Tom Hunger, Cornelius Diekmann";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to libseccomp";
      description = "Bindings to libseccomp. See \"System.Linux.Seccomp\" for docs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."seccomp" or ((hsPkgs.pkgs-errors).sysDepError "seccomp"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "seccomp-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."hsseccomp" or ((hsPkgs.pkgs-errors).buildDepError "hsseccomp"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }