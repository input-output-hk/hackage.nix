{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "syntax-example"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example application using syntax, a library for abstract syntax descriptions.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "syntax-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."semi-iso" or ((hsPkgs.pkgs-errors).buildDepError "semi-iso"))
            (hsPkgs."syntax" or ((hsPkgs.pkgs-errors).buildDepError "syntax"))
            (hsPkgs."syntax-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "syntax-attoparsec"))
            (hsPkgs."syntax-pretty" or ((hsPkgs.pkgs-errors).buildDepError "syntax-pretty"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }