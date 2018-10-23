{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "filecache";
        version = "0.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net/";
      url = "";
      synopsis = "A Linux-only cache system associating values to files.";
      description = "A Linux-only cache system, that works by associating computation results with file names. When the files are modified, the cache entries are discarded.";
      buildType = "Simple";
    };
    components = {
      "filecache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.hinotify)
          (hsPkgs.strict-base-types)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "simpletest" = {
          depends  = [
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