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
        name = "system-canonicalpath";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(c) Boris Buliga, 2014";
      maintainer = "Boris Buliga <d12frosted@icloud.com>";
      author = "Boris Buliga <d12frosted@icloud.com>";
      homepage = "https://github.com/d12frosted/CanonicalPath";
      url = "";
      synopsis = "Abstract data type for canonical paths with some utilities";
      description = "This library provides abstract data type named 'Filesystem.CanonicalPath.CanonicalPath' and some useful functions for working with it.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.directory)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
        ];
      };
      tests = {
        "canonicalpath_tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.chell)
            (hsPkgs.system-canonicalpath)
            (hsPkgs.system-filepath)
          ];
        };
      };
    };
  }