{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Adaptive-Blaisorblade"; version = "0.23"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Magnus Carlsson";
      homepage = "";
      url = "";
      synopsis = "Library for incremental computing.";
      description = "This is a Haskell (plus some extensions) implementation\nof a library for incremental computing.  It closely\nfollows the implementation in the nice POPL 2002 paper\n\"Adaptive Functional Programming\", by Umut Acar,\nGuy Blelloch and Bob Harper.\nThis is a small fork of the original library named\n\"Adaptive\", with the same interface but small adaptations\nto GHC 7.4.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = { "spreadsheet" = { buildable = true; }; };
      };
    }