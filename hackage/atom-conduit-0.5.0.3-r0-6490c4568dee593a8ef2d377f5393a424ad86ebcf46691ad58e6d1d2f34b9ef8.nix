{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enable-hlint-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atom-conduit"; version = "0.5.0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "koral";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
      description = "Cf README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.safe-exceptions)
          (hsPkgs.lens-simple)
          (hsPkgs.mono-traversable)
          (hsPkgs.parsers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          ];
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.atom-conduit)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.lens-simple)
            (hsPkgs.mono-traversable)
            (hsPkgs.parsers)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.safe-exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            ];
          };
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      };
    }