{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.23";
      identifier = { name = "wxcore"; version = "0.92.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "https://wiki.haskell.org/WxHaskell";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell. It is\nbuilt on top of wxWidgets, a comprehensive C++ library that is\nportable across all major GUI platforms, including GTK, Windows,\nX11, and MacOS X. This version works with wxWidgets 2.9 and 3.0.\nDistributed under the WXWINDOWS LIBRARY LICENSE. Please see\nLICENSE file, but note that this is essentially LGPL with an\nexception allowing binary distribution of proprietary software.\nThis is the same license as wxWidgets itself uses.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or ((hsPkgs.pkgs-errors).buildToolDepError "process")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."wxc" or ((hsPkgs.pkgs-errors).buildDepError "wxc"))
          (hsPkgs."wxdirect" or ((hsPkgs.pkgs-errors).buildDepError "wxdirect"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        frameworks = [
          (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"))
          ];
        buildable = true;
        };
      };
    }