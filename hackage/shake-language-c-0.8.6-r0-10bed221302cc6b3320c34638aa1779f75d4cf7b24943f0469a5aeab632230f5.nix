{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "shake-language-c"; version = "0.8.6"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2012-2014 Samplecount S.L.";
      maintainer = "stefan@samplecount.com";
      author = "";
      homepage = "https://github.com/samplecount/shake-language-c";
      url = "";
      synopsis = "Utilities for cross-compiling with Shake";
      description = "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @C@, @C++@ and @ObjC@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
            (hsPkgs."shake-language-c" or ((hsPkgs.pkgs-errors).buildDepError "shake-language-c"))
            ];
          buildable = true;
          };
        "spectests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
            (hsPkgs."shake-language-c" or ((hsPkgs.pkgs-errors).buildDepError "shake-language-c"))
            ];
          buildable = true;
          };
        };
      };
    }