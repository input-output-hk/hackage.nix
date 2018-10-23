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
        name = "paripari";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/paripari#readme";
      url = "";
      synopsis = "Fast-path parser combinators with fallback for error reporting";
      description = "PariPari offers two parsing strategies. There is a fast Acceptor and a slower Reporter which are evaluated in parallel. If the Acceptor fails, the Reporter returns a report about the parsing errors. Unlike Parsec and like Attoparsec, the parser combinators backtrack by default.";
      buildType = "Simple";
    };
    components = {
      "paripari" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.paripari)
            (hsPkgs.parser-combinators)
            (hsPkgs.text)
          ];
        };
      };
    };
  }