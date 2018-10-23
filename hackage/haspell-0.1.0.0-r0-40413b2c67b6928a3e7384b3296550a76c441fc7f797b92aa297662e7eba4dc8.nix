{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haspell";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "joel@otte.rs";
      author = "Joel Taylor";
      homepage = "https://github.com/otters/haspell";
      url = "";
      synopsis = "Haskell bindings to aspell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haspell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."aspell") ];
      };
    };
  }