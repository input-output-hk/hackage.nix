{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "email-validate";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "George Pollard";
      homepage = "http://porg.es/blog/properly-validating-e-mail-addresses";
      url = "";
      synopsis = "Validating an email address string against RFC 5322";
      description = "Validating an email address string against RFC 5322";
      buildType = "Simple";
    };
    components = {
      "email-validate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }