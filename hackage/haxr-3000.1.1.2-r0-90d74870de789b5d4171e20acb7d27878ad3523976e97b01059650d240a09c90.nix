{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haxr";
        version = "3000.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, 2003-2006";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://www.haskell.org/haxr/";
      url = "";
      synopsis = "XML-RPC client and server library.";
      description = "HaXR is a library for writing XML-RPC\nclient and server applications in Haskell.";
      buildType = "Simple";
    };
    components = {
      "haxr" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.HaXml)
          (hsPkgs.HTTP)
          (hsPkgs.dataenc)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }