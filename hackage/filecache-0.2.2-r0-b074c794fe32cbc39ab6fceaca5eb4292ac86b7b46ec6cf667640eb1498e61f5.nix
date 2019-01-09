{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "filecache"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net/";
      url = "";
      synopsis = "A Linux-only cache system associating values to files. The values are discarded when the files are modified.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.hinotify)
          (hsPkgs.strict-base-types)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          ];
        };
      tests = {
        "simpletest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filecache)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }