{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { parsec = true; trifecta = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "indentation"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>\nAleksey Kliger <aleksey@lambdageek.org>";
      author = "Michael D. Adams <http://michaeldadams.org/>";
      homepage = "https://bitbucket.org/adamsmd/indentation";
      url = "";
      synopsis = "Indentation sensitive parsing combinators for Parsec and Trifecta";
      description = "Indentation sensitive parsing combinators for Parsec and Trifecta.\n\nThis package provides both the Parsec and\nTrifecta combinators.  It is mainly useful for\nbackward compatability with older versions of\nindentation.\nIndividual backends are available in the indentation-parsec and indentation-trifecta\npackages.\n\nSee\n\n__Michael D. Adams and Ömer S. Ağacan__.\nIndentation-sensitive parsing for Parsec.\nIn /Proceedings of the 2014 ACM SIGPLAN Symposium on Haskell/,\nHaskell ’14, pages 121–132.\nACM, New York, NY, USA, September 2014. ISBN 978-1-4503-3041-1.\n<http://dx.doi.org/10.1145/2633357.2633369 doi:10.1145/2633357.2633369>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."indentation-core" or ((hsPkgs.pkgs-errors).buildDepError "indentation-core"))
          ] ++ (pkgs.lib).optionals (flags.parsec) [
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."indentation-parsec" or ((hsPkgs.pkgs-errors).buildDepError "indentation-parsec"))
          ]) ++ (pkgs.lib).optionals (flags.trifecta) [
          (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."indentation-trifecta" or ((hsPkgs.pkgs-errors).buildDepError "indentation-trifecta"))
          ];
        buildable = true;
        };
      };
    }