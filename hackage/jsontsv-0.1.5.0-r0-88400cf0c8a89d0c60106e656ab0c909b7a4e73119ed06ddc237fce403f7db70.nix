{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jsontsv"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "(c) 2014 Daniel Choi";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/jsontsv";
      url = "";
      synopsis = "JSON to TSV transformer";
      description = "Transforms JSON into tab-separated line-oriented output, for easier processing in Unix-style pipelines.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "jsontsv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."string-qq" or ((hsPkgs.pkgs-errors).buildDepError "string-qq"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            ];
          buildable = true;
          };
        };
      };
    }