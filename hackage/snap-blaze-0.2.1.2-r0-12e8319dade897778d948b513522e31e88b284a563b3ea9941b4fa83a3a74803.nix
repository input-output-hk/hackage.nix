{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "snap-blaze";
        version = "0.2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/snap-blaze";
      url = "";
      synopsis = "blaze-html integration for Snap";
      description = "blaze-html integration for Snap";
      buildType = "Simple";
    };
    components = {
      "snap-blaze" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.snap-core)
        ];
      };
    };
  }