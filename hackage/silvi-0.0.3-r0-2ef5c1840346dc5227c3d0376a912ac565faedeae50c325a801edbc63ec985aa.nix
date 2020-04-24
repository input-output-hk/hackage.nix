{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "silvi"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/silvi#readme";
      url = "";
      synopsis = "A generator for different kinds of logs.";
      description = "A Haskell library for generating logs\nfrom user specifications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."chronos" or ((hsPkgs.pkgs-errors).buildDepError "chronos"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
          (hsPkgs."quantification" or ((hsPkgs.pkgs-errors).buildDepError "quantification"))
          (hsPkgs."savage" or ((hsPkgs.pkgs-errors).buildDepError "savage"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }