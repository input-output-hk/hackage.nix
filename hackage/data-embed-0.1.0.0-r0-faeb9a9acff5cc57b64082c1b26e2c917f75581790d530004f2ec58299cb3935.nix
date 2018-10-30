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
        name = "data-embed";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/data-embed";
      url = "";
      synopsis = "Embed files and other binary blobs inside executables without Template Haskell.";
      description = "This package provides a Template Haskell-free alternative to <http://hackage.haskell.org/package/file-embed file-embed>. It provides a versioned, well defined binary format for embedded blobs, as well as library support and command line utilities for manipulating them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.directory)
          (hsPkgs.executable-path)
        ];
      };
      exes = {
        "embedtool" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.directory)
            (hsPkgs.executable-path)
          ];
        };
      };
    };
  }