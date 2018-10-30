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
      specVersion = "1.6";
      identifier = {
        name = "dtd";
        version = "1.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Parse and render DTD files (deprecated)";
      description = "Parse and render DTD files";
      buildType = "Simple";
    };
    components = {
      "library" = {
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