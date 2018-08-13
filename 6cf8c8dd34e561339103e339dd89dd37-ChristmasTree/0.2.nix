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
      specVersion = "1.2.3";
      identifier = {
        name = "ChristmasTree";
        version = "0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/TTTAS";
      url = "";
      synopsis = "Alternative approach of 'read' that composes grammars instead of parsers.";
      description = "ChristmasTree (Changing Haskell's Read Implementation Such That by Mainpulating ASTs it Reads Expressions Efficiently) is an alternative approach of 'read' that composes grammars instead of parsers. It reads data in linear time, while the function 'read' has an exponential behavior in some cases of data types with infix operators.";
      buildType = "Simple";
    };
    components = {
      "ChristmasTree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.TTTAS)
          (hsPkgs.uulib)
        ];
      };
    };
  }