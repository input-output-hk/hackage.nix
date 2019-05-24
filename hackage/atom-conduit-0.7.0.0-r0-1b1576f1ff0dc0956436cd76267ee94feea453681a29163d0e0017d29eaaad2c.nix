{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enable-hlint-test = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "atom-conduit"; version = "0.7.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
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
          (hsPkgs.base-noprelude)
          (hsPkgs.relude)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.safe-exceptions)
          (hsPkgs.lens-simple)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.refined)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          ];
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.relude)
            (hsPkgs.atom-conduit)
            (hsPkgs.conduit)
            (hsPkgs.generic-random)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.refined)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            ];
          };
        "golden" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.relude)
            (hsPkgs.atom-conduit)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.pretty-simple)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.text)
            (hsPkgs.xml-conduit)
            ];
          };
        "unit" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.relude)
            (hsPkgs.atom-conduit)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.lens-simple)
            (hsPkgs.refined)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            ];
          };
        "hlint" = {
          depends = [ (hsPkgs.base-noprelude) (hsPkgs.relude) (hsPkgs.hlint) ];
          };
        };
      };
    }