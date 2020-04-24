{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "LDAP"; version = "0.6.10"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2014 John Goerzen, Edward Z. Yang";
      maintainer = "Edward Z. Yang <ezyang@mit.edu>";
      author = "John Goerzen, Edward Z. Yang";
      homepage = "https://github.com/ezyang/ldap-haskell";
      url = "";
      synopsis = "Haskell binding for C LDAP API";
      description = "This package provides LDAP interface code for Haskell programs,\nbinding to the C LDAP API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."ldap" or ((hsPkgs.pkgs-errors).sysDepError "ldap"))
          (pkgs."lber" or ((hsPkgs.pkgs-errors).sysDepError "lber"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          libs = [
            (pkgs."ldap" or ((hsPkgs.pkgs-errors).sysDepError "ldap"))
            (pkgs."lber" or ((hsPkgs.pkgs-errors).sysDepError "lber"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }