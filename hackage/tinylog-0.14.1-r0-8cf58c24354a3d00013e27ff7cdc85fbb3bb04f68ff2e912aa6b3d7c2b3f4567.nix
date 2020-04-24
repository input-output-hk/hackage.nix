{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tinylog"; version = "0.14.1"; };
      license = "MPL-2.0";
      copyright = "(C) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://gitlab.com/twittner/tinylog/";
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
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
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