{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stack-network"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Sean McGroarty";
      maintainer = "Sean McGroarty <mcgroas@tcd.ie>";
      author = "Sean McGroarty";
      homepage = "https://github.com/McGizzle/stack-network#readme";
      url = "";
      synopsis = "A program for extending Stack to add distributed capabilities";
      description = "See README at <https://github.com/McGizzle/stack-network#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."dirstream" or ((hsPkgs.pkgs-errors).buildDepError "dirstream"))
          (hsPkgs."distributed-process-lifted" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-lifted"))
          (hsPkgs."distributed-process-simplelocalnet" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-simplelocalnet"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "stack-network" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."dirstream" or ((hsPkgs.pkgs-errors).buildDepError "dirstream"))
            (hsPkgs."distributed-process-lifted" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-lifted"))
            (hsPkgs."distributed-process-simplelocalnet" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "distributed-test" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."dirstream" or ((hsPkgs.pkgs-errors).buildDepError "dirstream"))
            (hsPkgs."distributed-process-lifted" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-lifted"))
            (hsPkgs."distributed-process-simplelocalnet" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."stack-network" or ((hsPkgs.pkgs-errors).buildDepError "stack-network"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }