{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "atom-conduit"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral att mailoo dott org";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
      description = "This library implements the Atom 1.0 syndication format (<http://tools.ietf.org/html/rfc4287>) as a 'conduit' parser/renderer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.mono-traversable)
          (hsPkgs.network-uri)
          (hsPkgs.parsers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-conduit-parse)
          (hsPkgs.xml-types)
          ];
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.atom-conduit)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-parse)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.hlint)
            (hsPkgs.lens)
            (hsPkgs.mono-traversable)
            (hsPkgs.network-uri)
            (hsPkgs.parsers)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-parse)
            (hsPkgs.xml-types)
            ];
          };
        };
      };
    }