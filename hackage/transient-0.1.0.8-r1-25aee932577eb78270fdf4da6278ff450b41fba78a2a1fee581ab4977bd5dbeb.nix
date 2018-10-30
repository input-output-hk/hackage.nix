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
        version = "0.1.0.8";
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
        depends  = [
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
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.TCache)
        ];
      };
    };
  }