{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "attoparsec-iteratee"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregorycollins.net";
      author = "Gregory Collins";
      homepage = "http://github.com/gregorycollins";
      url = "";
      synopsis = "An adapter to convert attoparsec Parsers into blazing-fast Iteratees";
      description = "An adapter to convert attoparsec Parsers into blazing-fast Iteratees";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }