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
        name = "srcloc";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2012 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "Data types for managing source code locations.";
      description = "Data types for managing source code locations.";
      buildType = "Simple";
    };
    components = {
      "srcloc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
        ];
      };
    };
  }