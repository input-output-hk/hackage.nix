{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "system-canonicalpath";
        version = "0.2.3.0";
      };
      license = "MIT";
      copyright = "(c) Boris Buliga, 2014";
      maintainer = "Boris Buliga <d12frosted@icloud.com>";
      author = "Boris Buliga <d12frosted@icloud.com>";
      homepage = "https://github.com/d12frosted/CanonicalPath";
      url = "";
      synopsis = "Abstract data type for canonical paths with pretty operations";
      description = "This library provides abstract data type named 'CanonicalPath' and some useful functions for working with it. See every module's description to find out more.";
      buildType = "Custom";
    };
    components = {
      "system-canonicalpath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.directory)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
        ];
      };
    };
  }