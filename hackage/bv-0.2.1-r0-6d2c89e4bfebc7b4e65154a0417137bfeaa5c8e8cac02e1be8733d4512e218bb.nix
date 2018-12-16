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
        name = "bv";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2013 Iago Abal, HASLab & University of Minho";
      maintainer = "Iago Abal <iago.abal@gmail.com>";
      author = "Iago Abal <iago.abal@gmail.com>";
      homepage = "http://bitbucket.org/iago/bv-haskell";
      url = "";
      synopsis = "Bit-vectors library";
      description = "Bit-vectors implemented as a wrapper over integers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }