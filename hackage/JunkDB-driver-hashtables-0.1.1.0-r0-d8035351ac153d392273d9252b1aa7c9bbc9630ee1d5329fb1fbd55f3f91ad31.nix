{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "JunkDB-driver-hashtables"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "seagull.kamome@gmail.com";
      author = "HATTORI, Hiroki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Generic KVS API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.JunkDB)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.resourcet)
          ];
        };
      };
    }