{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sysinfo"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Sibi";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/sysinfo#readme";
      url = "";
      synopsis = "Haskell Interface for getting overall system statistics";
      description = "This package can be used to get system statistics like\nuptime, free memory, system load etc. Note that\nthe package works *only* on Linux system with\nkernel version >= 2.3.23 and uses FFI calls.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "sysinfo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sysinfo" or ((hsPkgs.pkgs-errors).buildDepError "sysinfo"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            ];
          buildable = true;
          };
        };
      };
    }