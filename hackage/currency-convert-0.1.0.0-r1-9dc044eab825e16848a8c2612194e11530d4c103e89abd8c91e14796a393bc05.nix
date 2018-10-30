{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "currency-convert";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pigworts2@gmail.com";
      author = "Tuomas Laakkonen";
      homepage = "http://tuomas56.github.io/currency-convert";
      url = "";
      synopsis = "Typesafe currency conversion";
      description = "A typesafe currency conversion system with a various exchange rate sources for over 30 currencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
        ];
      };
    };
  }