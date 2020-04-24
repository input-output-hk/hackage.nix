{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "billeksah-main-static"; version = "1.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Juergen \"jutaro\" Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken";
      homepage = "http://www.leksah.org";
      url = "https://github.com/leksah";
      synopsis = "Leksah plugin base";
      description = "Plugin framework used by leksah (static version)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "billeksah-main-static" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."billeksah-services" or ((hsPkgs.pkgs-errors).buildDepError "billeksah-services"))
            (hsPkgs."billeksah-forms" or ((hsPkgs.pkgs-errors).buildDepError "billeksah-forms"))
            (hsPkgs."billeksah-pane" or ((hsPkgs.pkgs-errors).buildDepError "billeksah-pane"))
            (hsPkgs."leksah-main" or ((hsPkgs.pkgs-errors).buildDepError "leksah-main"))
            (hsPkgs."leksah-plugin-pane" or ((hsPkgs.pkgs-errors).buildDepError "leksah-plugin-pane"))
            (hsPkgs."leksah-dummy" or ((hsPkgs.pkgs-errors).buildDepError "leksah-dummy"))
            ];
          buildable = true;
          };
        };
      };
    }