{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haxr";
        version = "3000.11.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, 2003-2006";
      maintainer = "Brent Yorgey <byorgey@gmail.com>";
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
          (hsPkgs.base-compat)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.network)
          (hsPkgs.http-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.io-streams)
          (hsPkgs.http-types)
          (hsPkgs.HaXml)
          (hsPkgs.http-streams)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.array)
          (hsPkgs.utf8-string)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-builder)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
    };
  }