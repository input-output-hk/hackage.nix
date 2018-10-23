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
        name = "sax";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "";
      url = "";
      synopsis = "Monadic streaming XML parser";
      description = "Fast monadic streaming XML parser. 🎷\nIt feels and looks like any other parser combinators library.";
      buildType = "Simple";
    };
    components = {
      "sax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.streaming)
          (hsPkgs.text)
          (hsPkgs.xeno)
        ];
      };
      tests = {
        "xeno-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sax)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }