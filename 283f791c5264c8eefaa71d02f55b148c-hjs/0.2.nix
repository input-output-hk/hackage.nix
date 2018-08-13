{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "hjs";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Mark Wassell 2007";
      maintainer = "mwassell@bigpond.net.au";
      author = "Mark Wassell<mwassell@bigpond.net.au>";
      homepage = "http://www.haskell.org/haskellwiki/Libraries_and_tools/HJS";
      url = "";
      synopsis = "Javascript Parser";
      description = "A Javascript parser and interpreter.\nWorks as per ECMA-262 plus some parts of JS >=1.5.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hjs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }