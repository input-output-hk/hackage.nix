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
      specVersion = "1.2.3";
      identifier = {
        name = "ChristmasTree";
        version = "0.1.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/TTTAS";
      url = "";
      synopsis = "Changing Haskell's Read Implementation Such That by Mainpulating Abstract Syntax Trees it Reads Expressions Efficiently";
      description = "Alternative approach of 'read' that composes grammars instead of parsers. It reads data in linear time, while the function 'read' has an exponential behavior in some cases of data types with infix operators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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