{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "encoding";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "h.guenther@tu-bs.de";
      author = "Henning Günther";
      homepage = "http://code.haskell.org/encoding/";
      url = "";
      synopsis = "A library for various character encodings";
      description = "Haskell has excellect handling of unicode, the Char type covers all unicode chars. Unfortunatly, there's no possibility to read or write something to the outer world in an encoding other than ascii due to the lack of support for encodings. This library should help with that.";
      buildType = "Simple";
    };
    components = {
      "encoding" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
      };
    };
  }