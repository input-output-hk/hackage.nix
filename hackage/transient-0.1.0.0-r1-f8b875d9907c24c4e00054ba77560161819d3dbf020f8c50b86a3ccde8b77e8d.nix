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
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "A monad for extensible effects and primitives for unrestricted composability of applications";
      description = "see <http://github.com/agocorona/transient>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.stm)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.network-info)
        ];
      };
      exes = {
        "transient" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.transformers)
            (hsPkgs.transient)
          ];
        };
        "move" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.transformers)
            (hsPkgs.transient)
          ];
        };
      };
    };
  }