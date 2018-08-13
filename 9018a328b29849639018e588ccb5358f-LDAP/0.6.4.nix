{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "LDAP";
        version = "0.6.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ldap-haskell";
      url = "";
      synopsis = "Haskell binding for C LDAP API";
      description = "";
      buildType = "Custom";
    };
    components = {
      "LDAP" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."ldap") ];
      };
    };
  }