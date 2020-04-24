{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hascat"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Björn Teegen 2006, Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Björn Teegen, Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Web Server";
      description = "Hascat Web Server\n\nHow to install:\n\n1. install with cabal-install\n\n2. make a directory where you want the hascat-apps (hasclets) to be installed\n\n3. run\n\n\$ hascat-setup \\<directory\\>\n\n4. in that directory run:\n\n\$ hascat config.xml\n\n\nFor more information check my bachelor thesis:\n\n<http://www.informatik.uni-kiel.de/~fmi/bachelor.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hascat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hascat-lib" or ((hsPkgs.pkgs-errors).buildDepError "hascat-lib"))
            (hsPkgs."hascat-system" or ((hsPkgs.pkgs-errors).buildDepError "hascat-system"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."haxr" or ((hsPkgs.pkgs-errors).buildDepError "haxr"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hascat-setup" or ((hsPkgs.pkgs-errors).buildDepError "hascat-setup"))
            ];
          buildable = true;
          };
        };
      };
    }