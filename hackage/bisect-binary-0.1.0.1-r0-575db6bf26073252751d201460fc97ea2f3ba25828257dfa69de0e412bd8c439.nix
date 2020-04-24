{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bisect-binary"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2017 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "http://github.com/nomeata/bisect-binary";
      url = "";
      synopsis = "Determine relevant parts of binary data";
      description = "This little program helps with the following task:\n\nYou need to analyse some binary file (e.g., the firmware for some\nmicrocontroller). You want to understand how it does certain things, but the\nfile is big. One approach to help you in the process is to erase parts of the file\n(by overwriting it with binary zeros) and see if the file still does what it\nshould be doing. If it does, then you know that the interesting parts are in\nanother part of the file.\n\n`binary-binary` assists in this process by doing the book-keeping and zeroing\nout parts of the file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bisect-binary" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."integer-logarithms" or ((hsPkgs.pkgs-errors).buildDepError "integer-logarithms"))
            (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }