{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use-integer-simple = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hmpfr"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michal Konečný <mikkonecny@gmail.com>";
      author = "Aleš Bizjak, Michal Konečný";
      homepage = "https://github.com/michalkonecny/hmpfr";
      url = "";
      synopsis = "Haskell binding to the MPFR library";
      description = "Haskell binding to the MPFR library.\n\nThe library includes both a pure and a mutable interface.\nThe mutable interface should have a lot less overhead\nthan the pure one.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if flags.use-integer-simple
          then [
            (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))
            ]
          else [
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            ]);
        libs = [ (pkgs."mpfr" or ((hsPkgs.pkgs-errors).sysDepError "mpfr")) ];
        buildable = true;
        };
      };
    }