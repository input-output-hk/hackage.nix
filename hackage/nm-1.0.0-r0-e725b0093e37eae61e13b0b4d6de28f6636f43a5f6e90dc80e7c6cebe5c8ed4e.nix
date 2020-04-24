{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "nm"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Network Manager, binding to libnm-glib.";
      description = "A binding to libnm-glib.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."nm-glib" or ((hsPkgs.pkgs-errors).sysDepError "nm-glib"))
          (pkgs."g" or ((hsPkgs.pkgs-errors).sysDepError "g"))
          ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "glib-2.0"))
          (pkgconfPkgs."libnm-glib" or ((hsPkgs.pkgs-errors).pkgConfDepError "libnm-glib"))
          ];
        buildable = true;
        };
      exes = {
        "nm-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nm" or ((hsPkgs.pkgs-errors).buildDepError "nm"))
            ];
          buildable = true;
          };
        };
      };
    }