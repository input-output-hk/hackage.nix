{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bindings-ppdev"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joe7mail@gmail.com";
      author = "Joe M";
      homepage = "";
      url = "";
      synopsis = "PPDev bindings";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bindings-DSL) (hsPkgs.ioctl) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }