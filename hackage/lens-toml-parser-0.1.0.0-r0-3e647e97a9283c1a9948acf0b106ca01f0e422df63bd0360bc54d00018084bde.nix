{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lens-toml-parser"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "Copyright (c) 2017, Henry Till";
      maintainer = "henrytill@gmail.com";
      author = "Henry Till";
      homepage = "https://github.com/xngns/lens-toml-parser";
      url = "";
      synopsis = "Lenses for toml-parser";
      description = "Lenses for toml-parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."toml-parser" or ((hsPkgs.pkgs-errors).buildDepError "toml-parser"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."dwergaz" or ((hsPkgs.pkgs-errors).buildDepError "dwergaz"))
            (hsPkgs."toml-parser" or ((hsPkgs.pkgs-errors).buildDepError "toml-parser"))
            (hsPkgs."lens-simple" or ((hsPkgs.pkgs-errors).buildDepError "lens-simple"))
            (hsPkgs."lens-toml-parser" or ((hsPkgs.pkgs-errors).buildDepError "lens-toml-parser"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }