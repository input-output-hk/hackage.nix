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
      specVersion = "1.2";
      identifier = {
        name = "haxr-th";
        version = "3000.5";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, 2003-2006";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://www.haskell.org/haxr/";
      url = "";
      synopsis = "Automatic deriving of XML-RPC structs for Haskell records.";
      description = "HaXR is a library for writing XML-RPC\nclient and server applications in Haskell.\nThis package adds automatic deriving of\nXML-RPC structs for Haskell records,\nusing Template Haskell.";
      buildType = "Simple";
    };
    components = {
      "haxr-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haxr)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }