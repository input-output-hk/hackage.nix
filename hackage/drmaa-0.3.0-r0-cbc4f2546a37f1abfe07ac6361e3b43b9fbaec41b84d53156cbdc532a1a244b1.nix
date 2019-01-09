{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "drmaa"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2018 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A Haskell bindings to the DRMAA C library.";
      description = "A Haskell bindings to the DRMAA C library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.directory) (hsPkgs.exceptions) ];
        libs = [ (pkgs."drmaa") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }