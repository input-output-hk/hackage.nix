{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cassava = true; rawstring-qm = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "double-extra"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/double-extra#readme";
      url = "";
      synopsis = "Missing presentations for Double numbers (fixed, scientific etc.)";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (flags.cassava) (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))) ++ (pkgs.lib).optionals (flags.rawstring-qm) [
          (hsPkgs."rawstring-qm" or ((hsPkgs.pkgs-errors).buildDepError "rawstring-qm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }