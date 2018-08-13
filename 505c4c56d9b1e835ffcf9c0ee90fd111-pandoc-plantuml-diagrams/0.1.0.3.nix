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
        name = "pandoc-plantuml-diagrams";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "contact@jonasw.de";
      author = "Jonas Weber";
      homepage = "";
      url = "";
      synopsis = "Render and insert PlantUML diagrams with Pandoc";
      description = "PlantUML renders different types of UML diagrams.\nThis filter invokes plantuml.jar (which must be present\nin the current directory) for any yet unrendered diagrams.\n\nDiagrams are recognized in CodeBlocks that have the\nclass \"uml\". It is advisable to also include an attribute\n\"caption\", which is rendered as alternate text for the image.\nIf an ID is present, it is additionally appended compatible\nwith pandoc-crossref.";
      buildType = "Simple";
    };
    components = {
      "pandoc-plantuml-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pandoc-types)
          (hsPkgs.SHA)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "pandoc-plantuml-diagrams" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc-plantuml-diagrams)
            (hsPkgs.pandoc-types)
          ];
        };
      };
      tests = {
        "test-pandoc-crossref" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.pandoc-types)
            (hsPkgs.SHA)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }