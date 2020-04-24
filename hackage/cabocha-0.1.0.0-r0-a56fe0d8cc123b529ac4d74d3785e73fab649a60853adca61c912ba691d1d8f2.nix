{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabocha"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Miyazawa Akira <pecorarista@gmail.com>";
      author = "Miyazawa Akira";
      homepage = "http://github.com/pecorarista/hscabocha";
      url = "";
      synopsis = "";
      description = "A Haskell binding to CaboCha <http://taku910.github.io/cabocha>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = [
          (pkgs."cabocha" or ((hsPkgs.pkgs-errors).sysDepError "cabocha"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cabocha" or ((hsPkgs.pkgs-errors).buildDepError "cabocha"))
            (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
            ];
          buildable = true;
          };
        };
      };
    }