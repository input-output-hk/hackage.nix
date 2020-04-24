{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      testproject = false;
      staticlinking = false;
      optimize = true;
      };
    package = {
      specVersion = "1.4";
      identifier = { name = "Eq"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux <vincent.berthoux@gmail.com>";
      author = "Vincent Berthoux";
      homepage = "http://twinside.free.fr/eq/";
      url = "";
      synopsis = "Render math formula in ASCII, and perform some simplifications";
      description = "Haskell formula manipulation program";
      buildType = "Simple";
      };
    components = {
      exes = {
        "eq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }