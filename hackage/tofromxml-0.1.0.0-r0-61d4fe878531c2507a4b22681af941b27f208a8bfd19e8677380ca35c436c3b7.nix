{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tofromxml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Robert Reitmeier";
      maintainer = "Robert Reitmeier <concat [\"public\",\" a t \",\"thinking-machines\",\"dot\",\".net\"]>";
      author = "Robert Reitmeier";
      homepage = "";
      url = "";
      synopsis = "Reading/writing Haskell data from/to XML";
      description = "A library for reading/writing Haskell data from/to XML. Only prerequisite is that the data type derives Generic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hexpat-pickle" or ((hsPkgs.pkgs-errors).buildDepError "hexpat-pickle"))
          (hsPkgs."hexpat" or ((hsPkgs.pkgs-errors).buildDepError "hexpat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tofromxml" or ((hsPkgs.pkgs-errors).buildDepError "tofromxml"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hexpat" or ((hsPkgs.pkgs-errors).buildDepError "hexpat"))
            (hsPkgs."hexpat-pickle" or ((hsPkgs.pkgs-errors).buildDepError "hexpat-pickle"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }