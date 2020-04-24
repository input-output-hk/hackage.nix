{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bumper"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "http://github.com/silkapp/bumper";
      url = "";
      synopsis = "Automatically bump package versions, also transitively.";
      description = "Automatically bump package versions, also transitively.\n\nReadme: <https://www.github.com/silkapp/bumper/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bumper" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            ];
          buildable = true;
          };
        };
      };
    }