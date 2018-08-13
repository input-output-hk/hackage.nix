{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      lib-werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "phash";
        version = "0.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2014 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/phash";
      url = "";
      synopsis = "Haskell bindings to pHash, the open source perceptual hash library";
      description = "See http://www.phash.org/ for more info. Note that you\nmust have libphash installed on your system to use this\nlibrary. Check your system library.";
      buildType = "Simple";
    };
    components = {
      "phash" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.pHash) ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.smallcheck)
          ];
          libs = [ (pkgs.pHash) ];
        };
        "docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.phash)
          ];
          libs = [ (pkgs.pHash) ];
        };
      };
    };
  }