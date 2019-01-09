{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dpkg"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2011, 2012 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "";
      url = "";
      synopsis = "libdpkg bindings";
      description = "Haskell bindings to the libdpkg API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bytestring)
          (hsPkgs.monad-loops)
          ];
        pkgconfig = [ (pkgconfPkgs.libdpkg) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.dpkg)
            (hsPkgs.bytestring)
            ];
          libs = [ (pkgs."dpkg") ];
          pkgconfig = [ (pkgconfPkgs.libdpkg) ];
          };
        };
      };
    }