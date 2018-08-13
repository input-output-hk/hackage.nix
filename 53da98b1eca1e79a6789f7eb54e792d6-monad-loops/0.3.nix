{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      usestm = true;
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "monad-loops";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "Monadic loops";
      description = "Some useful control operators for looping";
      buildType = "Simple";
    };
    components = {
      "monad-loops" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (_flags.usestm) (hsPkgs.stm);
      };
    };
  }