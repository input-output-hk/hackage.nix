{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Frank"; version = "0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "conor@strictlypositive.org";
      author = "Conor McBride";
      homepage = "http://personal.cis.strath.ac.uk/~conor/pub/Frank/";
      url = "";
      synopsis = "An experimental programming language with typed algebraic effects";
      description = "An experimental programming language with typed algebraic effects";
      buildType = "Simple";
      };
    components = {
      exes = {
        "frank" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."she" or ((hsPkgs.pkgs-errors).buildDepError "she"))
            ];
          buildable = true;
          };
        };
      };
    }