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
        name = "hoppy-generator";
        version = "0.3.1";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2015-2017 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Code generator";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package is the code generator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src)
          (hsPkgs.mtl)
        ];
      };
    };
  }