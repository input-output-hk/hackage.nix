{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dtd";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michaels@suite-sol.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Parse and render DTD files";
      description = "Parse and render DTD files";
      buildType = "Simple";
    };
    components = {
      "dtd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.xml-conduit)
          (hsPkgs.uri-conduit)
          (hsPkgs.transformers)
          (hsPkgs.xml-types)
          (hsPkgs.attoparsec)
          (hsPkgs.monad-control)
          (hsPkgs.xml-catalog)
          (hsPkgs.blaze-builder)
          (hsPkgs.network)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.lifted-base)
        ];
      };
    };
  }