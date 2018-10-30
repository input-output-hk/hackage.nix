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
        name = "ndjson-conduit";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-ndjson-conduit";
      url = "";
      synopsis = "Conduit-based parsing and serialization for newline delimited JSON.";
      description = "Hackage documentation generation is not reliable.\nFor up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
        ];
      };
    };
  }