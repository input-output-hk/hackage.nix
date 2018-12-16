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
        name = "transient";
        version = "0.5.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "composing programs with multithreading, events and distributed computing";
      description = "See <http://github.com/agocorona/transient>\nIn this release distributed primitives have been moved to the transient-universe package, and web primitives have been moved to the ghcjs-hplay package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.random)
          (hsPkgs.bytestring)
        ];
      };
    };
  }