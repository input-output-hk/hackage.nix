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
        name = "Spock-api";
        version = "0.12.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2017 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://www.spock.li";
      url = "";
      synopsis = "Another Haskell web framework for rapid development";
      description = "API definition DSL for Spock web framework";
      buildType = "Simple";
    };
    components = {
      "Spock-api" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.reroute)
          (hsPkgs.hvect)
          (hsPkgs.deepseq)
        ];
      };
    };
  }