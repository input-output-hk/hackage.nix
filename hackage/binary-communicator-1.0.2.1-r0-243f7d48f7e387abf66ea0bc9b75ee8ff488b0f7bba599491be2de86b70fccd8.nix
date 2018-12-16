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
      specVersion = "1.6";
      identifier = {
        name = "binary-communicator";
        version = "1.0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sönke Hahn <shahn@joyridelabs.de>";
      author = "Yves Parès";
      homepage = "";
      url = "";
      synopsis = "Flexible way to ease transmission of binary data.";
      description = "Simple datatype that makes easier to send and receive values in any MonadIO. Inspired by Gregory Crosswhite's 'binary-protocol' package.";
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