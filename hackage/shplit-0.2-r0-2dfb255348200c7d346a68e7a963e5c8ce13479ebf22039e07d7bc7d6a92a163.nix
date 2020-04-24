{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "shplit"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "conor@strictlypositive.org";
      author = "Conor McBride";
      homepage = "http://personal.cis.strath.ac.uk/~conor/pub/shplit";
      url = "";
      synopsis = "A Haskell pattern splitter with emacs attachments";
      description = "Shplit is a transducer which attempts to split one function line into several\nby replacing a variable with constructor patterns, deduced from the type\nannotation on the function.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shplit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }