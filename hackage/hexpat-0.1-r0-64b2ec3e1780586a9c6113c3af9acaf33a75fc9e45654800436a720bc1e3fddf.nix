{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hexpat";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Evan Martin <martine@danga.com>";
      maintainer = "martine@danga.com";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/browse/?r=hexpat;a=summary";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hexpat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
        libs = [ (pkgs."expat") ];
      };
    };
  }