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
      specVersion = "1.10";
      identifier = {
        name = "email-validate-json";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "https://github.com/mwotton/email-validate-json#readme";
      url = "";
      synopsis = "Aeson instances for email-validate";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "email-validate-json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.email-validate)
          (hsPkgs.aeson)
          (hsPkgs.text)
        ];
      };
    };
  }