{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "luis-client";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Micxjo Funkcio";
      maintainer = "Micxjo Funkcio <micxjo@fastmail.com>";
      author = "Micxjo Funkcio <micxjo@fastmail.com>";
      homepage = "https://github.com/micxjo/hs-luis-client";
      url = "";
      synopsis = "An unofficial client for the LUIS NLP service.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "luis-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.http-client)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
    };
  }