{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "streaming-attoparsec"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Colin Woodbury, colin@fosskers.ca";
      author = "Michael Thompson";
      homepage = "https://github.com/haskell-streaming/streaming-attoparsec";
      url = "";
      synopsis = "Attoparsec integration for the streaming ecosystem";
      description = "Attoparsec integration for the streaming ecosystem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          ];
        };
      tests = {
        "streaming-attoparsec-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-attoparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }