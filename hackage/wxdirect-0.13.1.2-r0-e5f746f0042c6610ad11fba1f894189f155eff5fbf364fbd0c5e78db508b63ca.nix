{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "wxdirect"; version = "0.13.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "http://haskell.org/haskellwiki/WxHaskell";
      url = "";
      synopsis = "helper tool for building wxHaskell";
      description = "wxHaskell is a portable and native GUI library for Haskell. It is built on\ntop of wxWidgets, a comprehensive C++ library that is portable across all\nmajor GUI platforms, including GTK, Windows, X11, and MacOS X. This version\nworks with wxWidgets 2.8 only.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "wxdirect" = {
          depends = [
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }