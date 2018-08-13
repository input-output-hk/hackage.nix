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
      specVersion = "1.2";
      identifier = {
        name = "XInput";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Bindings for the DirectX XInput library.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "XInput" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
        ];
        libs = [ (pkgs."xinput") ];
      };
    };
  }