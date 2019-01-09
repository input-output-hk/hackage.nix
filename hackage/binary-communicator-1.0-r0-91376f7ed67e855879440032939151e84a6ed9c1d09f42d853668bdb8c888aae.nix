{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "binary-communicator"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yves Parès <limestrael@gmail.com>";
      author = "Yves Parès";
      homepage = "";
      url = "";
      synopsis = "Send and receive binary data.";
      description = "Simple datatype that makes easier to send and receive serializable values in any MonadIO. Inspired by Gregory Crosswhite's 'binary-protocol' package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          ];
        };
      };
    }