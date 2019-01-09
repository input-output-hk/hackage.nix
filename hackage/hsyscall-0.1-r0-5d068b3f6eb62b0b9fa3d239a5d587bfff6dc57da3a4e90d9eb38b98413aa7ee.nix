{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hsyscall"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aycan.irican@core.gen.tr";
      author = "Aycan iRiCAN";
      homepage = "http://sites.google.com/site/iricanaycan/hsyscall";
      url = "";
      synopsis = "FFI to syscalls";
      description = "FFI to OS syscalls (open, close, sendfile etc...).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }