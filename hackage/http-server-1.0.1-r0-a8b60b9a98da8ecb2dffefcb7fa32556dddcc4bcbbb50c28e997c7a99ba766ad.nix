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
        name = "http-server";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Galois, Inc.";
      homepage = "http://code.galois.com/";
      url = "";
      synopsis = "A library for writing Haskell web servers.";
      description = "A library for writing Haskell web servers.";
      buildType = "Simple";
    };
    components = {
      "http-server" = {
        depends  = [
          (hsPkgs.HTTP)
          (hsPkgs.base)
          (hsPkgs.mime)
          (hsPkgs.network)
          (hsPkgs.url)
          (hsPkgs.utf8-string)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }