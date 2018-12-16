{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "LDAP";
        version = "0.6.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2012 John Goerzen, Edward Z. Yang";
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
          (hsPkgs.base)
          (hsPkgs.base)
        ];
        libs = [
          (pkgs."ldap")
          (pkgs."lber")
        ];
      };
      exes = {
        "runtests" = {
          depends = [ (hsPkgs.base) ];
          libs = [
            (pkgs."ldap")
            (pkgs."lber")
          ];
        };
      };
    };
  }