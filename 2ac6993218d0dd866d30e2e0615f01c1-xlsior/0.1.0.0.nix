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
      specVersion = "1.10";
      identifier = {
        name = "xlsior";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ropoctl@gmail.com";
      author = "rcallahan";
      homepage = "";
      url = "";
      synopsis = "Streaming Excel file generation and parsing";
      description = "Streaming Excel file generation and parsing";
      buildType = "Simple";
    };
    components = {
      "xlsior" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.zip-archive)
          (hsPkgs.blaze-markup)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.vector)
          (hsPkgs.conduit)
          (hsPkgs.xml-conduit)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
          (hsPkgs.xml-types)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.zip-archive)
            (hsPkgs.blaze-markup)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
      };
    };
  }