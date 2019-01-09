{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "porte"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sbahra@kerneled.org";
      author = "Samy Al Bahra";
      homepage = "";
      url = "";
      synopsis = "FreeBSD ports index search and analysis tool";
      description = "Porte provides a simple, fast and efficient interface to searching\nFreeBSD ports index fields. It also has a simple statistics mode which\nallows collecting frequency statistics for these fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.stringsearch)
          ];
        };
      exes = { "porte" = {}; };
      };
    }