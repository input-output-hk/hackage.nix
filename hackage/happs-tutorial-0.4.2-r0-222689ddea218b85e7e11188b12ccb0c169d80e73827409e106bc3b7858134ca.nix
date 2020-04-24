{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "happs-tutorial"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "2008 Thomas Hartman";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "A HAppS Tutorial that is is own demo";
      description = "A nice way to learn how to build web sites with HAppS";
      buildType = "Simple";
      };
    components = {
      exes = {
        "happs-tutorial" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HAppS-Server" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Server"))
            (hsPkgs."HAppS-Data" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Data"))
            (hsPkgs."HAppS-State" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-State"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }