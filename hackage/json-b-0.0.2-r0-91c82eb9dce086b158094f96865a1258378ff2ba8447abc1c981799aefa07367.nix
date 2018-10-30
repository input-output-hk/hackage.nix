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
      specVersion = "1.2.3";
      identifier = {
        name = "json-b";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jsonb@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/jsnx/JSONb/";
      url = "";
      synopsis = "JSON parser that uses byte strings.";
      description = "This parser consumes lazy ByteStrings to produce JSON in a simple, efficient\nformat backed with strict ByteStrings, Rationals and ByteString tries. See\nthe schema generation tools and the command line JSON schema generator (in\nthe examples subdir) for an example of how to use the parsing tools.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.bytestringparser-temporary)
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
            (hsPkgs.bytestringparser-temporary)
            (hsPkgs.bytestring-nums)
            (hsPkgs.bytestring-trie)
          ];
        };
      };
    };
  }