{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "themplate"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/themplate/";
      url = "";
      synopsis = "themplate";
      description = "themplate";
      buildType = "Simple";
      };
    components = {
      exes = {
        "themplate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            ];
          buildable = true;
          };
        };
      };
    }