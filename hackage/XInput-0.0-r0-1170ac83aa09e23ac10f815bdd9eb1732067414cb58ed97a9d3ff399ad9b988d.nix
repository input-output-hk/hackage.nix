{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "XInput"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Bindings for the DirectX XInput library.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          ];
        libs = [
          (pkgs."xinput" or ((hsPkgs.pkgs-errors).sysDepError "xinput"))
          ];
        buildable = true;
        };
      };
    }