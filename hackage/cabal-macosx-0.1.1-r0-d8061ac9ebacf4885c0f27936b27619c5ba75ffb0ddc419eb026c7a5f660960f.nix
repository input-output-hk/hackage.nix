{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-macosx"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Eric Kow & Andy Gimblett";
      maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
      author = "Eric Kow <eric.kow@gmail.com> & Andy Gimblett <haskell@gimbo.org.uk>";
      homepage = "http://github.com/gimbo/cabal-macosx";
      url = "";
      synopsis = "Cabal support for creating Mac OSX application bundles.";
      description = "GUI applications on Mac OSX must be run as application /bundles/;\nthese wrap an executable in a particular directory structure which\ncan also carry resources such as icons, program metadata, other\nbinaries, and copies of shared libraries.\nThis package provides Cabal support for creating such application\nbundles.\nFor more information about OSX application bundles, look for the\n/Bundle Programming Guide/ on the /Apple Developer Connection/\nwebsite, <http://developer.apple.com/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }