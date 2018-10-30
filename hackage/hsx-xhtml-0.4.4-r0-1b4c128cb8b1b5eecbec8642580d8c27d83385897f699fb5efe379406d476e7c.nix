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
      specVersion = "0";
      identifier = {
        name = "hsx-xhtml";
        version = "0.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://code.google.com/hsp";
      url = "";
      synopsis = "XHTML utilities to use together with HSX.";
      description = "XHTML utilities to use together with HSX.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.hsx)
        ];
      };
    };
  }