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
      specVersion = "1.6";
      identifier = {
        name = "XInput";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "http://code.fac9.com/xinput/";
      url = "";
      synopsis = "Bindings for the DirectX XInput library.";
      description = "Bindings for the DirectX XInput library.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
        ];
        libs = [ (pkgs."xinput") ];
      };
    };
  }