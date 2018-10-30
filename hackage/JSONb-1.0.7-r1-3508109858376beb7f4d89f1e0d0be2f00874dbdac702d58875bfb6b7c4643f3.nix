{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cli = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "JSONb";
        version = "1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/JSONb/";
      url = "";
      synopsis = "JSON parser that uses byte strings.";
      description = "This parser consumes lazy ByteStrings to produce JSON in a simple, efficient\nformat backed with strict ByteStrings, Rationals and ByteString tries. See\nthe schema generation tools and the command line JSON schema generator (in\nthe examples subdir) for an example of how to use the parsing tools.\n\nHave you considered @aeson@ (<http://hackage.haskell.org/package/aeson>), a\nnewer, extensively benchmarked JSON parsing library?";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring-nums)
          (hsPkgs.bytestring-trie)
        ];
      };
      exes = {
        "json-schema" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring-nums)
            (hsPkgs.bytestring-trie)
          ];
        };
      };
    };
  }