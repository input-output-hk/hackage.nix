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
        name = "yahoo-finance-conduit";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann <mail@agrafix.net>";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "";
      url = "";
      synopsis = "Streaming aproach to the yahoo finance api";
      description = "Small library streaming stock market data from the yahoo finance api";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.wreq)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.cassava)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }