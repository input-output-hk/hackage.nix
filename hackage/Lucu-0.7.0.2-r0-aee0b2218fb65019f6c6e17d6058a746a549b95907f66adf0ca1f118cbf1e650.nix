{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-lucu-implant-file = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Lucu";
        version = "0.7.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Lucu.html";
      url = "";
      synopsis = "HTTP Daemonic Library";
      description = "Lucu is an HTTP daemonic library. It can be embedded in any\nHaskell program and runs in an independent thread.  Lucu is\nnot a replacement for Apache or lighttpd. It is intended to be\nused to create an efficient web-based RESTful application\nwithout messing around FastCGI. It is also intended to be run\nbehind a reverse-proxy so it doesn't have some facilities like\nlogging, client filtering or such like.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.haskell-src)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.time-http)
          (hsPkgs.unix)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "lucu-implant-file" = {};
      };
    };
  }