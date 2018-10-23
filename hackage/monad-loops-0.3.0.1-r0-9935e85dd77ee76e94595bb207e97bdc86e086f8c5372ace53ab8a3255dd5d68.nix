{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      usestm = true;
      base4 = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "monad-loops";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "http://code.haskell.org/~mokus/monad-loops";
      url = "";
      synopsis = "Monadic loops";
      description = "Some useful control operators for looping";
      buildType = "Simple";
    };
    components = {
      "monad-loops" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (flags.usestm) (hsPkgs.stm);
      };
    };
  }