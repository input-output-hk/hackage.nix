{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "libexpect"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stroantree@gmail.com";
      author = "Stephen Roantree";
      homepage = "";
      url = "";
      synopsis = "Library for interacting with console applications via pseudoterminals.";
      description = "Bindings to libexpect.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.unix) ];
        libs = [ (pkgs."expect") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }