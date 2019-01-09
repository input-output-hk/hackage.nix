{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "LibZip"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/hs-libzip/";
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
          ];
        };
      };
    }