{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "win-hp-path"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Yitzchak Gale";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://github.com/ygale/win-hp-path";
      url = "";
      synopsis = "Work with multiple Haskell Platform versions on Windows";
      description = "This package provides a program needed by the\nwin-hp-path project to make it easy to work with\nmultiple versions of the Haskell Platform on\nWindows. See the home page on GitHub for more\ninfomation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "use-hppath" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."win-hp-path" or ((hsPkgs.pkgs-errors).buildDepError "win-hp-path"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }