{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "aligned-foreignptr";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "An aligned ForeignPtr type";
      description = "An aligned ForeignPtr type.";
      buildType = "Simple";
    };
    components = {
      "aligned-foreignptr" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }