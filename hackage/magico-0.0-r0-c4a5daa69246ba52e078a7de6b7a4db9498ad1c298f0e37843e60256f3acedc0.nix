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
      specVersion = "1.10";
      identifier = {
        name = "magico";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/magico";
      url = "";
      synopsis = "Compute solutions for Magico puzzle";
      description = "Compute solutions for Magico puzzle:\n<http://www.spectra-verlag.de/SID=96asni2sdrq0m0u98bd7qshij6/shopneu/start.php3>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "magico" = {
          depends  = [
            (hsPkgs.hmatrix)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }