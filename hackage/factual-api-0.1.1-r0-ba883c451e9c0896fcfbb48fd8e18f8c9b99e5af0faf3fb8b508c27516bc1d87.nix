{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "factual-api";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Rudiger Lippert";
      maintainer = "Rudiger Lippert <rudy@factual.com>";
      author = "Rudiger Lippert <rudy@factual.com>";
      homepage = "https://github.com/rudyl313/factual-haskell-driver";
      url = "";
      synopsis = "A driver for the Factual API";
      description = "This is a driver for the Factual API. It provides a typesafe way to\ngenerate queries, an easy way to setup OAuth authentication and a\nsimple way to send queries to the API.";
      buildType = "Simple";
    };
    components = {
      "factual-api" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.hoauth)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }