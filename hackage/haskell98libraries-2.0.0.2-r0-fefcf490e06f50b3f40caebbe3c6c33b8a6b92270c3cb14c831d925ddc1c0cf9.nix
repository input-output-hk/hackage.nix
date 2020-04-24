{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { utctime-in-directory = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell98libraries"; version = "2.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hallgren@chalmers.se";
      author = "";
      homepage = "http://www.haskell.org/definition/";
      url = "";
      synopsis = "Compatibility with Haskell 98";
      description = "This package provides compatibility with the library modules of Haskell\n98 and the FFI addendum, by means of wrappers around modules from\nthe base package (which in many cases have additional features).\nHowever \"Prelude\", \"Numeric\" and \"Foreign\" are provided directly by\nthe base package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ [
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }