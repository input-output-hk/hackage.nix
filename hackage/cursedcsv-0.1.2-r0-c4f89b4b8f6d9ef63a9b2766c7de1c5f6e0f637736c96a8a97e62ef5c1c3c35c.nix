{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cursedcsv"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman, Jeff Polakow";
      homepage = "";
      url = "";
      synopsis = "Terminal tool for viewing tabular data";
      description = "Curses-based tool for quick display, searching, sorting, etc. of\ntabular data. Help available in the app with either '?' or 'h'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cursedcsv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            (hsPkgs."natural-sort" or ((hsPkgs.pkgs-errors).buildDepError "natural-sort"))
            (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."csv-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "csv-enumerator"))
            (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }