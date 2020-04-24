{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-syb = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "curry-base"; version = "0.2.9"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Björn Peemöller <bjp@informatik.uni-kiel.de>";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel,\nBjörn Peemöller";
      homepage = "http://www.curry-language.org";
      url = "";
      synopsis = "Functions for manipulating Curry programs";
      description = "This package serves as a foundation for Curry compilers.\nIt defines the intermediate language formats FlatCurry and\nExtendedFlat. Additionally, it provides functionality\nfor the smooth integration of compiler frontends and backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ] ++ (if flags.split-syb
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }