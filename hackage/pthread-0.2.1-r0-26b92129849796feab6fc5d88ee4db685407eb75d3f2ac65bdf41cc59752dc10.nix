{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pthread"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2017 EURL Tweag,\n© 2017 LeapYear Technologies.";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/pthread";
      url = "";
      synopsis = "Bindings for the pthread library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          ];
        libs = [
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."pthread" or ((hsPkgs.pkgs-errors).buildDepError "pthread"))
            ];
          buildable = true;
          };
        };
      };
    }