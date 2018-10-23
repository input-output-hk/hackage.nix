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
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Rudiger Lippert";
      maintainer = "Rudiger Lippert <rudy@factual.com>";
      author = "Rudiger Lippert <rudy@factual.com>";
      homepage = "https://github.com/rudyl313/factual-haskell-driver";
      url = "";
      synopsis = "A driver for the Factual API";
      description = "This is a driver for the Factual API. It provides a type-safe, easy way to\ngenerate queries, setup OAuth authentication and send queries to the API.";
      buildType = "Simple";
    };
    components = {
      "factual-api" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dataenc)
          (hsPkgs.hoauth)
          (hsPkgs.HTTP)
          (hsPkgs.MissingH)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
    };
  }