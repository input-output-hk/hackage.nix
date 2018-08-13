{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "xml-catalog";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michaels@suite-sol.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Parse XML catalog files";
      description = "Parse XML catalog files";
      buildType = "Simple";
    };
    components = {
      "xml-catalog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.dtd-types)
          (hsPkgs.dtd-text)
          (hsPkgs.containers)
          (hsPkgs.xml-enumerator)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
          (hsPkgs.uri-enumerator)
          (hsPkgs.transformers)
        ];
      };
    };
  }