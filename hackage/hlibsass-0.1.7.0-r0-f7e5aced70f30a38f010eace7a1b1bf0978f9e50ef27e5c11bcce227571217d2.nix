{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { externallibsass = false; sharedlibsass = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hlibsass"; version = "0.1.7.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "fiolek94@gmail.com";
      author = "Jakub Fijałkowski <fiolek94@gmail.com>";
      homepage = "https://github.com/jakubfijalkowski/hlibsass";
      url = "";
      synopsis = "Low-level bindings to Libsass";
      description = "This package provides (very) low level bindings to LibSass. By default, it\nuses LibSass compiled as a static library, so if you use this in your project,\nyou have to link your project with C++ runtime (which hLibsass does\nautomatically - links with /libstdc++/).\nFor documentation visit <https://github.com/sass/libsass>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."sass" or ((hsPkgs.pkgs-errors).sysDepError "sass"))
          ] ++ (pkgs.lib).optionals (!flags.externallibsass && !flags.sharedlibsass) (if system.isOsx
          then [ (pkgs."c++" or ((hsPkgs.pkgs-errors).sysDepError "c++")) ]
          else [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hlibsass" or ((hsPkgs.pkgs-errors).buildDepError "hlibsass"))
            ];
          buildable = true;
          };
        };
      };
    }