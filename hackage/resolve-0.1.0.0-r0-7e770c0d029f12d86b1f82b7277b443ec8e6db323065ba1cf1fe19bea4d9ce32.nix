{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "resolve"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "GPL3";
      maintainer = "haskell@riaqn.org";
      author = "Zesen Qian";
      homepage = "https://github.com/riaqn/resolve#readme";
      url = "";
      synopsis = "A name resolusion library";
      description = "Please see README.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."attoparsec-binary" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-binary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bv" or ((hsPkgs.pkgs-errors).buildDepError "bv"))
          (hsPkgs."hashmap" or ((hsPkgs.pkgs-errors).buildDepError "hashmap"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          ];
        buildable = true;
        };
      };
    }