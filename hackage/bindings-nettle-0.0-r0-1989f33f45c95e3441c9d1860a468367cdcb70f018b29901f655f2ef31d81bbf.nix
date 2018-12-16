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
      specVersion = "1.10";
      identifier = {
        name = "bindings-nettle";
        version = "0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2013 Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/bindings-nettle";
      url = "";
      synopsis = "bindings to nettle crypto library";
      description = "partial bindings to nettle crypto library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        pkgconfig = [
          (pkgconfPkgs.nettle)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }