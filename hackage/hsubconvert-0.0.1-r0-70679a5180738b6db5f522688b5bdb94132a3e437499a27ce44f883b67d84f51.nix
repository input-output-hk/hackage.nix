{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsubconvert"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/hsubconvert";
      url = "";
      synopsis = "One-time, faithful conversion of Subversion repositories to Git";
      description = "One-time, faithful conversion of Subversion repositories to Git.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsubconvert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."svndump" or ((hsPkgs.pkgs-errors).buildDepError "svndump"))
            (hsPkgs."gitlib" or ((hsPkgs.pkgs-errors).buildDepError "gitlib"))
            (hsPkgs."general-prelude" or ((hsPkgs.pkgs-errors).buildDepError "general-prelude"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."lzma-conduit" or ((hsPkgs.pkgs-errors).buildDepError "lzma-conduit"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }