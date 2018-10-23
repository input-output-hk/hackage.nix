{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haxr";
        version = "3000.8";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, 2003-2006";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://www.haskell.org/haskellwiki/HaXR";
      url = "";
      synopsis = "XML-RPC client and server library.";
      description = "HaXR is a library for writing XML-RPC\nclient and server applications in Haskell.";
      buildType = "Simple";
    };
    components = {
      "haxr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.HaXml)
          (hsPkgs.HTTP)
          (hsPkgs.bytestring)
          (hsPkgs.dataenc)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.array)
          (hsPkgs.utf8-string)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-builder)
        ];
      };
    };
  }