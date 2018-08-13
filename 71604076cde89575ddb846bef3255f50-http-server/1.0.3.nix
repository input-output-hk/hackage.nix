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
      specVersion = "1.6";
      identifier = {
        name = "http-server";
        version = "1.0.3";
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