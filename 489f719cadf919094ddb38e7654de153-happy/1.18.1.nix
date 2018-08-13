{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "happy";
        version = "1.18.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Andy Gill, Simon Marlow";
      maintainer = "Simon Marlow <simonmar@microsoft.com>";
      author = "Andy Gill and Simon Marlow";
      homepage = "http://www.haskell.org/happy/";
      url = "";
      synopsis = "Happy is a parser generator for Haskell";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "happy" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }