{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "formlets-hsp"; version = "2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Jeremy Yallop / Tupil, Jeremy Shaw";
      maintainer = "Jeremy Shaw <jeremy@seereason.com>";
      author = "Jeremy Yallop, Chris Eidhof, Jeremy Shaw, David Fox";
      homepage = "";
      url = "";
      synopsis = "HSP support for Formlets";
      description = "A modular way to build forms based on applicative functors, as\ndescribed in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>\n\nThis library extends formlets with support for HSP";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."formlets" or ((hsPkgs.pkgs-errors).buildDepError "formlets"))
          (hsPkgs."hsx" or ((hsPkgs.pkgs-errors).buildDepError "hsx"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."applicative-extras" or ((hsPkgs.pkgs-errors).buildDepError "applicative-extras"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.trhsx or (pkgs.buildPackages.trhsx or ((hsPkgs.pkgs-errors).buildToolDepError "trhsx")))
          ];
        buildable = true;
        };
      };
    }