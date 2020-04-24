{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "scons2dot"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Leandro Lisboa Penz <llpenz@gmail.com>";
      author = "Leandro Lisboa Penz";
      homepage = "";
      url = "";
      synopsis = "Generates graphviz file of scons dependency information";
      description = "This tool creates a graphviz dot file that represents\nbuild dependencies on a system built with scons.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "scons2dot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }