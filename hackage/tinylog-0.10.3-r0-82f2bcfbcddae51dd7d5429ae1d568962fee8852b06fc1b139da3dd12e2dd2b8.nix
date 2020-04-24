{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tinylog"; version = "0.10.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/tinylog/";
      url = "";
      synopsis = "Simplistic logging using fast-logger.";
      description = "Trivial logger on top of fast-logger.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."auto-update" or ((hsPkgs.pkgs-errors).buildDepError "auto-update"))
          (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unix-time" or ((hsPkgs.pkgs-errors).buildDepError "unix-time"))
          ];
        buildable = true;
        };
      benchmarks = {
        "tinylog-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."tinylog" or ((hsPkgs.pkgs-errors).buildDepError "tinylog"))
            ];
          buildable = true;
          };
        };
      };
    }