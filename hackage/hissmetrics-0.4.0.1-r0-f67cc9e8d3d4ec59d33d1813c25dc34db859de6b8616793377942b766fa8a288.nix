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
        name = "hissmetrics";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa";
      homepage = "https://github.com/meteficha/hissmetrics";
      url = "";
      synopsis = "Unofficial API bindings to KISSmetrics.";
      description = "This package provides simple functions that allow you to access\nKISSmetrics using Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
        ];
      };
    };
  }