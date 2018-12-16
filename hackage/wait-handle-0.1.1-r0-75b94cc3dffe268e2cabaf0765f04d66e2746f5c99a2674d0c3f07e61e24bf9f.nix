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
      specVersion = "1.2";
      identifier = {
        name = "wait-handle";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vi <vi@zalora.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "https://www.github.com/fmap/waithandle";
      url = "";
      synopsis = "Wait handles are MVars which can only be written to once, and from which values can never be removed.";
      description = "Packaging of 'WaitHandle', extracted from Max Bolingbroke's OpenShake. Wait\nhandles are MVars which can only be written to once, and from which values\ncan never be removed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }