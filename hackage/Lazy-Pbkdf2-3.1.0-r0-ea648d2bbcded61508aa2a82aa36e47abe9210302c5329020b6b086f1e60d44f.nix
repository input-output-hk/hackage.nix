{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Lazy-Pbkdf2"; version = "3.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marcus Ofenhed <marcus@conditionraise.se>";
      author = "Marcus Ofenhed <marcus@conditionraise.se>";
      homepage = "";
      url = "";
      synopsis = "Lazy PBKDF2 generator.";
      description = "A PBKDF2 generator that generates either a lazy ByteString of\nPRNG data or a lazy list of strict ByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.binary) ];
        };
      tests = {
        "Known-answer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cryptonite)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.memory)
            ];
          };
        };
      benchmarks = {
        "bench-hashers" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.cryptonite)
            (hsPkgs.criterion)
            (hsPkgs.byteable)
            (hsPkgs.memory)
            ];
          };
        };
      };
    }