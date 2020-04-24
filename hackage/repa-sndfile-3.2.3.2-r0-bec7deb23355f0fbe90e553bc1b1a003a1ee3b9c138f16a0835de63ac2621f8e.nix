{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "repa-sndfile"; version = "3.2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<8c6794b6@gmail.com>";
      author = "<8c6794b6@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Reading and writing sound files with repa arrays";
      description = "Add supporting of reading and writing audio data with repa arrays in\nvarious format.\n\nThe code is using libsndfile and hsndfile package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          ] ++ (pkgs.lib).optionals (flags.example) [
          (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "rw" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."repa-sndfile" or ((hsPkgs.pkgs-errors).buildDepError "repa-sndfile"))
            ];
          buildable = if flags.example then true else false;
          };
        "gensine" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-sndfile" or ((hsPkgs.pkgs-errors).buildDepError "repa-sndfile"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."repa-sndfile" or ((hsPkgs.pkgs-errors).buildDepError "repa-sndfile"))
            ];
          buildable = true;
          };
        };
      };
    }