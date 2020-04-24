{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "polyseq"; version = "0.1.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Taming Selective Strictness";
      description = "Given a term, this program calculates a set of \\\"optimal\\\" free theorems\nthat hold in a lambda calculus with selective strictness. It omits\ntotality (in general, bottom-reflection) and other restrictions when\npossible. The underlying theory is described in the paper \\\"Taming\nSelective Strictness\\\" (ATPS'09) by Daniel Seidel and Janis Voigtländer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."free-theorems" or ((hsPkgs.pkgs-errors).buildDepError "free-theorems"))
          (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "polyseq.cgi" = {
          depends = [
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."free-theorems" or ((hsPkgs.pkgs-errors).buildDepError "free-theorems"))
            ];
          buildable = true;
          };
        };
      };
    }