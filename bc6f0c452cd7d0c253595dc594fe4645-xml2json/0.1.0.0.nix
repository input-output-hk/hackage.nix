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
      specVersion = "1.8";
      identifier = {
        name = "xml2json";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "http://github.com/yihuang/xml2json";
      url = "";
      synopsis = "translate xml to json";
      description = "";
      buildType = "Simple";
    };
    components = {
      "xml2json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.tagstream-conduit)
        ];
      };
      exes = {
        "xml2json" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.blaze-builder)
            (hsPkgs.case-insensitive)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            (hsPkgs.conduit)
            (hsPkgs.blaze-builder-conduit)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.tagstream-conduit)
          ];
        };
      };
    };
  }