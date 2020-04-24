{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Win32-notify"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Niklas Broberg, 2008; Mark Dittmer, 2012";
      maintainer = "Mark Dittmer <mark.s.dittmer@gmail.com>";
      author = "Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "A binding to part of the Win32 library for file notification";
      description = "A binding to part of the Win32 library for file notification";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Win32-notify" or ((hsPkgs.pkgs-errors).buildDepError "Win32-notify"))
            ];
          buildable = true;
          };
        };
      };
    }