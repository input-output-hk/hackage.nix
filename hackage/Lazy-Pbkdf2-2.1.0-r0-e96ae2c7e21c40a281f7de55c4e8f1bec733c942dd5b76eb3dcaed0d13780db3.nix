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
        name = "Lazy-Pbkdf2";
        version = "2.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Marcus Ofenhed <marcus@conditionraise.se>";
      author = "Marcus Ofenhed <marcus@conditionraise.se>";
      homepage = "";
      url = "";
      synopsis = "Lazy PBKDF2 generator.";
      description = "A PBKDF2 generator that generates a lazy ByteString\nof PRNG data.";
      buildType = "Simple";
    };
    components = {
      "Lazy-Pbkdf2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "Known-answer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cryptonite)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.memory)
          ];
        };
      };
    };
  }