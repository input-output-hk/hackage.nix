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
      specVersion = "1.10";
      identifier = {
        name = "bindings-friso";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "cosmo0920.wp@gmail.com";
      author = "cosmo0920";
      homepage = "";
      url = "";
      synopsis = "Low level bindings for friso";
      description = "Bindings to Friso  <https://code.google.com/p/friso/>.";
      buildType = "Simple";
    };
    components = {
      "bindings-friso" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs.friso) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }