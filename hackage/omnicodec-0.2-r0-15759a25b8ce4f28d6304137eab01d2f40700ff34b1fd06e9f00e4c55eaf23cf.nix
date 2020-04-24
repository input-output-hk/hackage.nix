{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "omnicodec"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Magnus Therning, 2007";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "data encoding and decoding command line utilities";
      description = "Two simply command line tools built on dataenc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        "oenc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }