{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      enable-hlint-test = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rss-conduit";
        version = "0.4.2.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "koral att mailoo dott org";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "Streaming parser/renderer for the RSS standard.";
      description = "Cf README file.";
      buildType = "Simple";
    };
    components = {
      "rss-conduit" = {
        depends  = [
          (hsPkgs.atom-conduit)
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.containers)
          (hsPkgs.dublincore-xml-conduit)
          (hsPkgs.safe-exceptions)
          (hsPkgs.lens-simple)
          (hsPkgs.safe)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.uri-bytestring)
          (hsPkgs.vinyl)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs.semigroups);
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.rss-conduit)
            (hsPkgs.atom-conduit)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.data-default)
            (hsPkgs.dublincore-xml-conduit)
            (hsPkgs.lens-simple)
            (hsPkgs.mono-traversable)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.safe-exceptions)
            (hsPkgs.singletons)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.uri-bytestring)
            (hsPkgs.vinyl)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }