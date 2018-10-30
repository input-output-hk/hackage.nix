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
      specVersion = "1.2";
      identifier = {
        name = "partial-isomorphisms";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rendel@informatik.uni-marburg.de";
      author = "Tillmann Rendel";
      homepage = "http://www.informatik.uni-marburg.de/~rendel/unparse";
      url = "";
      synopsis = "Partial isomorphisms.";
      description = "Partial isomorphisms as described in the\npaper:\n\nTillmann Rendel and Klaus Ostermann.\nInvertible Syntax Descriptions:\nUnifying Parsing and Pretty Printing.\nIn /Proc. of Haskell Symposium/, 2010.\n\nThe paper also describes invertible syntax\ndescriptions as a common interface for\nparsers and pretty printers. These are\ndistributed separately in the\n/invertible-syntax/ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }