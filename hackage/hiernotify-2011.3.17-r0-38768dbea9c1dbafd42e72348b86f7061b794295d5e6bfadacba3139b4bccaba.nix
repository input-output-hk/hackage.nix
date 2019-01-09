{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hiernotify"; version = "2011.3.17"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paolo.veronelli@gmail.com";
      author = "Paolo Veronelli";
      homepage = "http://github.com/paolino/hiernotify";
      url = "";
      synopsis = "Notification library for a filesystem hierarchy.";
      description = "Notification library for a filesystem hierarchy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.stm)
          (hsPkgs.old-time)
          (hsPkgs.mtl)
          ];
        };
      };
    }