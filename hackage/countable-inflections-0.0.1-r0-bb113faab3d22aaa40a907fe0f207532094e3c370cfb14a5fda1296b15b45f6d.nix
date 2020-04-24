{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "countable-inflections"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2016 Brady Ouren";
      maintainer = "Brady Ouren <brady@andand.co>";
      author = "Brady Ouren <brady@andand.co>";
      homepage = "https://github.com/tippenein/countable-inflections";
      url = "";
      synopsis = "Countable Text Inflections";
      description = "Provides methods for singularizing and pluralizing text.\nThe library is based on Rails' inflections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."countable-inflections" or ((hsPkgs.pkgs-errors).buildDepError "countable-inflections"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }