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
      specVersion = "1.2";
      identifier = {
        name = "spoon";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Matt Morrow & Dan Peebles, 2013 Liyang HU";
      maintainer = "Liyang HU <spoon@liyang.hu>";
      author = "Matt Morrow, Dan Peebles, Liyang HU";
      homepage = "";
      url = "";
      synopsis = "Catch errors thrown from pure computations.";
      description = "Takes an error-throwing expression and puts it back in the Maybe it belongs in.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
    };
  }