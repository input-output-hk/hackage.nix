{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      testproject = false;
      staticlinking = false;
      optimize = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "Eq"; version = "1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux <vincent.berthoux@gmail.com>";
      author = "Vincent Berthoux";
      homepage = "http://twinside.free.fr/eq/";
      url = "";
      synopsis = "Render math formula in ASCII, and perform some simplifications";
      description = "Haskell formula manipulation program\n\nChangelog :\n\nVersion 1.1.1:\n\n* Fixing some rendering bug\n\n* Updating all the dependencies";
      buildType = "Simple";
      };
    components = {
      exes = {
        "eq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }