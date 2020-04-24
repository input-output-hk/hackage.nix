{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "liboleg"; version = "2010.1.10.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Oleg Kiselyov";
      homepage = "http://okmij.org/ftp/";
      url = "";
      synopsis = "An evolving collection of Oleg Kiselyov's Haskell modules";
      description = "An evolving collection of Oleg Kiselyov's Haskell modules\n(released with his permission)\n\nSee the original articles at <http://okmij.org/ftp/>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."CC-delcont" or ((hsPkgs.pkgs-errors).buildDepError "CC-delcont"))
          ];
        buildable = true;
        };
      };
    }