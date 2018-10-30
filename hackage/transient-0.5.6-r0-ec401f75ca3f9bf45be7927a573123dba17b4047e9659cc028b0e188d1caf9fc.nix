{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "transient";
        version = "0.5.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "composing programs with multithreading, events and distributed computing";
      description = "See <http://github.com/agocorona/transient>\nDistributed primitives are in the transient-universe package. Web primitives are in the axiom package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.random)
        ];
      };
      tests = {
        "test-transient" = {
          depends  = [
            (hsPkgs.base)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && compiler.version.ge "0.1")) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.random)
          ];
        };
      };
    };
  }