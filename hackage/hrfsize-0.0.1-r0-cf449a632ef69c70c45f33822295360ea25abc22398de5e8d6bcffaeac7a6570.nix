{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hrfsize"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dias Kozhabay <librerush@tutanota.com>";
      author = "Dias Kozhabay <librerush@tutanota.com>";
      homepage = "https://github.com/librerush/hrfsize#readme";
      url = "";
      synopsis = "File size in human readable format";
      description = "Simple Haskell library for determining size of file in human readable format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "hrfsize-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."hrfsize" or ((hsPkgs.pkgs-errors).buildDepError "hrfsize"))
            ];
          buildable = true;
          };
        };
      };
    }