{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HandsomeSoup"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "https://github.com/egonSchiele/HandsomeSoup";
      url = "";
      synopsis = "Work with HTML more easily in HXT";
      description = "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."hxt-http" or ((hsPkgs.pkgs-errors).buildDepError "hxt-http"))
          ];
        buildable = true;
        };
      exes = {
        "handsomesoup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HandsomeSoup" or ((hsPkgs.pkgs-errors).buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HandsomeSoup" or ((hsPkgs.pkgs-errors).buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            ];
          buildable = true;
          };
        };
      };
    }