{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xml-picklers";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Philipp Balzarek";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "XML picklers based on xml-types, ported from hexpat-pickle";
      description = "A library of combinators that allows Haskell data structures to be pickled\n(serialized) to/from a representation of XML as defined in xml-types";
      buildType = "Simple";
    };
    components = {
      "xml-picklers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
    };
  }