{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "text-register-machine";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "https://github.com/acfoltzer/text-register-machine";
      url = "";
      synopsis = "A Haskell implementation of the 1# Text Register Machine";
      description = "An implementation of Lawrence S. Moss' @1\\#@ language and Text Register Machine (<http://www.indiana.edu/~iulg/trm/>).";
      buildType = "Simple";
    };
    components = {
      "text-register-machine" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
      };
    };
  }