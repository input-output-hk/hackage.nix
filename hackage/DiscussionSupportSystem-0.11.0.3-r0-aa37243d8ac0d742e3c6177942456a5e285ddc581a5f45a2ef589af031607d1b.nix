{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "DiscussionSupportSystem"; version = "0.11.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "masakazu.minamiyama@gmail.com";
      author = "minamiyama1994";
      homepage = "https://github.com/minamiyama1994/DiscussionSupportSystem";
      url = "";
      synopsis = "Discussion support system";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."DiscussionSupportSystem" or ((hsPkgs.pkgs-errors).buildDepError "DiscussionSupportSystem"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }