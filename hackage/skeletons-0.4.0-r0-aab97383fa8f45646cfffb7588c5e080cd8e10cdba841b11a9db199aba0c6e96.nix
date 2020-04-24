{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "skeletons"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "bill@casarin.me";
      author = "William Casarin";
      homepage = "https://github.com/jb55/skeletons";
      url = "";
      synopsis = "Manage project skeletons";
      description = "skeletons manages project skeletons by applying\ntemplates stored in a skeleton closet directory. skeletons\nmay also prompt for each variable in the project templates.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "skeletons" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tinytemplate" or ((hsPkgs.pkgs-errors).buildDepError "tinytemplate"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ];
          buildable = true;
          };
        };
      };
    }