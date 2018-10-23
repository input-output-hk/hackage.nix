{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "authenticate-ldap";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Litchard";
      author = "Michael Litchard";
      homepage = "http://github.com:mlitchard/authenticate-ldap";
      url = "";
      synopsis = "LDAP authentication for Haskell web applications.";
      description = "LDAP authentication for Haskell web applications.";
      buildType = "Simple";
    };
    components = {
      "authenticate-ldap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.LDAP)
          (hsPkgs.transformers)
        ];
      };
    };
  }