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
      specVersion = "1.8";
      identifier = {
        name = "LibZip";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/astanin/hs-libzip/";
      url = "";
      synopsis = "Bindings to libzip, a library for manipulating zip archives.";
      description = "libzip is a C library for reading, creating, and modifying zip archives.\nThis package allows to use it from Haskell code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bindings-libzip)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "test-libzip" = {
          depends = [
            (hsPkgs.LibZip)
            (hsPkgs.base)
            (hsPkgs.bindings-libzip)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }