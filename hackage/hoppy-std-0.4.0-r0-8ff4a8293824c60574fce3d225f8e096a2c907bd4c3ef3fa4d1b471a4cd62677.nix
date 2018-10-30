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
        name = "hoppy-std";
        version = "0.4.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2015-2018 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Standard library bindings";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package contains definitions for the C++ standard library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src)
          (hsPkgs.hoppy-generator)
        ];
      };
    };
  }