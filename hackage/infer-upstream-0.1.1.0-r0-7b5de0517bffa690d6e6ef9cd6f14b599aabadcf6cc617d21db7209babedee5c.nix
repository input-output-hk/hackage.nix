{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "infer-upstream"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "noonsilk@gmail.com";
      author = "Noon Silk";
      homepage = "https://github.com/silky/infer-upstream";
      url = "";
      synopsis = "Find the repository from where a given repo was forked";
      description = "Find the repository from where a given repo was forked";
      buildType = "Simple";
      };
    components = {
      exes = {
        "infer-upstream" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."github" or ((hsPkgs.pkgs-errors).buildDepError "github"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }