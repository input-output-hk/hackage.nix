{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tds"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2018 Travis Athougies";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "https://github.com/tathougies/beam-tds#readme";
      url = "";
      synopsis = "Pure Haskell TDS protocol implementation. Mainly for beam-mssql and beam-sybase";
      description = "This is a work in progress! Please report bugs on github\nLow-level Haskell TDS implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."tardis" or ((hsPkgs.pkgs-errors).buildDepError "tardis"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."streaming-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "streaming-attoparsec"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."attoparsec-binary" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-binary"))
          (hsPkgs."hostname" or ((hsPkgs.pkgs-errors).buildDepError "hostname"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tds" or ((hsPkgs.pkgs-errors).buildDepError "tds"))
            ];
          buildable = true;
          };
        };
      };
    }