{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HRay"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "boegel <kenneth [dot] hoste [at] elis [dot] ugent [dot] be>";
      author = "boegel";
      homepage = "http://trappist.elis.ugent.be/~kehoste/Haskell/HRay/";
      url = "";
      synopsis = "Haskell raytracer";
      description = "HRay is a ray tracing application written in Haskell as part of my\nthesis at Ghent University. It's quite simple for now, but I'll probably\nkeep on working on it in the near future.\n\nFor more information, see the homepage or the Haskell wiki entry:\n<http://haskell.org/haskellwiki/HRay>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HRay" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.gtk)
            ];
          };
        };
      };
    }