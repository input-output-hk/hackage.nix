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
        name = "atom-conduit";
        version = "0.3.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral att mailoo dott org";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
      description = "Please refer to README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.exceptions)
          (hsPkgs.foldl)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.mono-traversable)
          (hsPkgs.parsers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-conduit-parse)
          (hsPkgs.xml-types)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.atom-conduit)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-parse)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.hlint)
            (hsPkgs.microlens)
            (hsPkgs.mono-traversable)
            (hsPkgs.parsers)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-parse)
            (hsPkgs.xml-types)
          ];
        };
      };
    };
  }