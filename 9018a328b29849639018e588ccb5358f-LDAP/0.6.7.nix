{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildtests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "LDAP";
        version = "0.6.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ldap-haskell";
      url = "";
      synopsis = "Haskell binding for C LDAP API";
      description = "This package provides LDAP interface code for Haskell programs,\nbinding to the C LDAP API.";
      buildType = "Simple";
    };
    components = {
      "LDAP" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
        ];
        libs = [ (pkgs.ldap) ];
      };
      exes = {
        "runtests" = {
          depends  = [ (hsPkgs.base) ];
          libs = [ (pkgs.ldap) ];
        };
      };
    };
  }