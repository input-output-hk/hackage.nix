{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      newghc = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "encoding";
        version = "0.6.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "h.guenther@tu-bs.de";
      author = "Henning Günther";
      homepage = "http://code.haskell.org/encoding/";
      url = "";
      synopsis = "A library for various character encodings";
      description = "Haskell has excellect handling of unicode, the Char type covers all unicode chars. Unfortunatly, there's no possibility to read or write something to the outer world in an encoding other than ascii due to the lack of support for encodings. This library should help with that.";
      buildType = "Custom";
    };
    components = {
      "encoding" = {
        depends  = if _flags.splitbase
          then if _flags.newghc
            then [
              (hsPkgs.bytestring)
              (hsPkgs.base)
              (hsPkgs.binary)
              (hsPkgs.mtl)
              (hsPkgs.containers)
              (hsPkgs.extensible-exceptions)
              (hsPkgs.array)
              (hsPkgs.regex-compat)
              (hsPkgs.ghc-prim)
              (hsPkgs.ghc)
              (hsPkgs.HaXml)
            ]
            else [
              (hsPkgs.bytestring)
              (hsPkgs.base)
              (hsPkgs.binary)
              (hsPkgs.mtl)
              (hsPkgs.containers)
              (hsPkgs.extensible-exceptions)
              (hsPkgs.array)
              (hsPkgs.regex-compat)
              (hsPkgs.ghc)
              (hsPkgs.HaXml)
            ]
          else [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.HaXml)
          ];
      };
    };
  }