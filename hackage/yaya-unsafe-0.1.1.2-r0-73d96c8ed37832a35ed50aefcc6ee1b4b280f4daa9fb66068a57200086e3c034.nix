{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yaya-unsafe"; version = "0.1.1.2"; };
      license = "AGPL-3.0-only";
      copyright = "2017 Greg Pfeil";
      maintainer = "greg@technomadic.org";
      author = "Greg Pfeil";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Non-total extensions to the Yaya recursion scheme library.";
      description = "Yaya is designed as a _total_ library. However, it is often\nexpedient to use partial operations in some cases, and this\npackage extends Yaya to provide those operations. It’s in a\nseparate package (and modules) in order to make sure its\nuse is very intentional and also relatively obvious to\nthose reading your code. It’s recommended that you import\nthese modules qualified and, in particular, all the type\nclass instances here have been pulled into a separate\nmodule to avoid accidentally bringing them into scope.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."yaya" or ((hsPkgs.pkgs-errors).buildDepError "yaya"))
          ];
        buildable = true;
        };
      };
    }