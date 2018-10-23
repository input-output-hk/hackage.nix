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
        name = "html-conduit";
        version = "1.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/xml";
      url = "";
      synopsis = "Parse HTML documents using xml-conduit datatypes.";
      description = "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.";
      buildType = "Simple";
    };
    components = {
      "html-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.attoparsec)
          (hsPkgs.conduit-extra)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.xml-conduit)
            (hsPkgs.html-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }