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
        name = "HRay";
        version = "1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "boegel <kenneth [dot] hoste [at] [dot] ugent [dot] be>";
      author = "boegel";
      homepage = "http://boegel.kejo.be/ELIS/Haskell/HRay/";
      url = "";
      synopsis = "Haskell raytracer";
      description = "HRay is a ray tracing application written in Haskell as part of my\nmasters thesis at Ghent University.\nIt currently supports spheres, planes and metaballs (thanks to Jean-Phillipe Bernardy).\nFor more information, see the homepage or the Haskell wiki entry:\n<http://haskell.org/haskellwiki/HRay>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HRay" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.happy)
          ];
        };
      };
    };
  }