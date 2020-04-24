{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "webshow"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/chrisdone/webshow#readme";
      url = "";
      synopsis = "Show programming language printed values in a web UI";
      description = "Show programming language printed values in a web UI. Supports Haskell Show values only at the moment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "webshow" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."optparse-simple" or ((hsPkgs.pkgs-errors).buildDepError "optparse-simple"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            ];
          buildable = true;
          };
        };
      };
    }