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
        name = "hakyll-contrib";
        version = "0.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "Extra modules for the hakyll website compiler";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.pandoc)
        ];
      };
      exes = {
        "hakyll-contrib" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hakyll)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }