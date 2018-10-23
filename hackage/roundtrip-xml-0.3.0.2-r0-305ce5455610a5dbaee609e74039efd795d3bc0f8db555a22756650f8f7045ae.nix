{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "roundtrip-xml";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>,";
      author = "Stefan Wehr <wehr@factisresearch.com>,\nDavid Leuschner <leuschner@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional (de-)serialization for XML.";
      description = "Roundtrip allows the definition of bidirectional\n(de-)serialization specifications. This package provides\nconcrete implementations of these specifications\nfor the serialization format XML. See the roundtrip\npackage for more details.";
      buildType = "Simple";
    };
    components = {
      "roundtrip-xml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.enumerator)
          (hsPkgs.xml-enumerator)
          (hsPkgs.xml-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.pretty)
          (hsPkgs.reference)
          (hsPkgs.roundtrip)
          (hsPkgs.roundtrip-string)
        ];
      };
      exes = {
        "tests" = {
          depends  = pkgs.lib.optionals (flags.tests) [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.roundtrip)
            (hsPkgs.roundtrip-string)
            (hsPkgs.roundtrip-xml)
            (hsPkgs.enumerator)
            (hsPkgs.xml-enumerator)
            (hsPkgs.reference)
          ];
        };
      };
    };
  }