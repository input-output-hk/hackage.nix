{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtp-check = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "ghc-tags-plugin"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020, Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/ghc-tags-plugin#readme";
      url = "";
      synopsis = "A compiler plugin which generates tags file from GHC parsed syntax tree.";
      description = "A [GHC compiler plugin](https://ghc.gitlab.haskell.org/ghc/doc/users_guide/extending_ghc.html?highlight=compiler%20plugin#compiler-plugins)\nwhich takes parsed Haskell representation @HsModule GhcPs@,\nextracts __tags__ information and saves it either in __ctags__ or\n__etags__ format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."filepath-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "filepath-bytestring"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ghc-tags-core" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tags-core"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "gtp-check" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-tags-plugin" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tags-plugin"))
            ];
          buildable = if flags.gtp-check then true else false;
          };
        };
      };
    }