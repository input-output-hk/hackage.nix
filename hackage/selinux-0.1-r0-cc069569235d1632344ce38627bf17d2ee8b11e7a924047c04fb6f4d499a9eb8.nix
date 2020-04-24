{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "selinux"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stegeman@gmail.com";
      author = "Luite Stegeman";
      homepage = "https://github.com/luite/selinux";
      url = "";
      synopsis = "SELinux bindings";
      description = "Haskell bindings for the SELinux API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = [
          (pkgs."selinux" or ((hsPkgs.pkgs-errors).sysDepError "selinux"))
          ];
        buildable = true;
        };
      };
    }