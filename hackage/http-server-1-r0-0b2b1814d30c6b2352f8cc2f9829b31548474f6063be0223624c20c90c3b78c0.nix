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
      specVersion = "1.6";
      identifier = {
        name = "http-server";
        version = "1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Galois Inc";
      homepage = "http://code.galois.com/";
      url = "";
      synopsis = "A library fro writing Haskell web servers.";
      description = "A library fro writing Haskell web servers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.url)
          (hsPkgs.HTTP)
          (hsPkgs.utf8-string)
          (hsPkgs.mime)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }