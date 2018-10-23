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
        name = "dublincore-xml-conduit";
        version = "0.1.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "koral@mailoo.org";
      author = "koral";
      homepage = "https://github.com/k0ral/dublincore-xml-conduit";
      url = "";
      synopsis = "XML streaming parser/renderer for the Dublin Core standard elements.";
      description = "Cf README file.";
      buildType = "Simple";
    };
    components = {
      "dublincore-xml-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.safe-exceptions)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.timerep)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.dublincore-xml-conduit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.data-default)
            (hsPkgs.safe-exceptions)
            (hsPkgs.hlint)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
          ];
        };
      };
    };
  }