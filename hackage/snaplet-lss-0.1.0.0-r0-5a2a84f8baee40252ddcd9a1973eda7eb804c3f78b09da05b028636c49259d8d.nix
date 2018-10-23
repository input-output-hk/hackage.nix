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
        name = "snaplet-lss";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/lss";
      url = "";
      synopsis = "Lexical Style Sheets - Snap Web Framework adaptor.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "snaplet-lss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lss)
          (hsPkgs.xmlhtml)
          (hsPkgs.heist)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "test-snaplet-lss" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.snap)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.hspec-snap)
            (hsPkgs.hspec2)
            (hsPkgs.snaplet-lss)
          ];
        };
      };
    };
  }