{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "vintage-basic"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lyle@vintage-basic.net";
      author = "Lyle Kopnicky";
      homepage = "http://www.vintage-basic.net";
      url = "";
      synopsis = "Interpreter for 1970s-era BASIC";
      description = "An interpreter for what is essentially Microsoft BASIC v2,\nwhat you might find on a computer in the late 70s or early\n80s, such as the Commodore 64.\n\nRather than making use of traditional stack-based primitives,\nthe implementation uses monad transformers, including one\nwith resumable exceptions that can caught by a program's\ncontinuation rather than its context.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vintbas" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }