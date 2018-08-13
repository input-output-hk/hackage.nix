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
        name = "fileplow";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/fileplow#readme";
      url = "";
      synopsis = "Library to process and search large files or a collection of files";
      description = "Library to process and search large files or a collection of files";
      buildType = "Simple";
    };
    components = {
      "fileplow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.binary-search)
        ];
      };
      tests = {
        "fileplow-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fileplow)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }