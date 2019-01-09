{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "transient"; version = "0.1.0.9"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "Making composable programs with multithreading, events and distributed computing";
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
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.TCache)
          (hsPkgs.SHA)
          ];
        };
      };
    }