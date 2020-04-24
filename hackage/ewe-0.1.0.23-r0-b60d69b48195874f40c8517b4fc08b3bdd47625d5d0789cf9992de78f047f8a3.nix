{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ewe"; version = "0.1.0.23"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fcardona@eafit.edu.co";
      author = "Juan Francisco Cardona McCormick";
      homepage = "http://github.com/jfcmacro/ewe";
      url = "";
      synopsis = "An language to teach a programming";
      description = "Another implemention of the EWE programming language originally created and developed by Kent D. Lee. EWE is an extension of the RAM programming language. RAM was created by Sethi.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ewe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }