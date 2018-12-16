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
        name = "dsmc-tools";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "";
      url = "";
      synopsis = "DSMC toolkit for rarefied gas dynamics";
      description = "CLI tools for dsmc library";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dsmc-caster" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.dsmc)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
            (hsPkgs.strict)
          ];
        };
        "dsmc-runner" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.ConfigFile)
            (hsPkgs.dsmc)
            (hsPkgs.hslogger)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.repa)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }