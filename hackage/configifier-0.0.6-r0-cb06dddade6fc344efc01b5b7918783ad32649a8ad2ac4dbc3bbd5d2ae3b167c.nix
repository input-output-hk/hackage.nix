{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { profiling = false; with-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "configifier"; version = "0.0.6"; };
      license = "AGPL-3.0-only";
      copyright = "zerobuzz.net";
      maintainer = "Matthias Fischmann <mf@zerobuzz.net>";
      author = "Matthias Fischmann <mf@zerobuzz.net>, Andres Löh <andres@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "parser for config files, shell variables, command line args.";
      description = "See <https://github.com/zerobuzz/configifier/blob/master/README.md README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."regex-easy" or ((hsPkgs.pkgs-errors).buildDepError "regex-easy"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "configifier-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."configifier" or ((hsPkgs.pkgs-errors).buildDepError "configifier"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = if flags.with-example then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."configifier" or ((hsPkgs.pkgs-errors).buildDepError "configifier"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }