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
      specVersion = "1.8";
      identifier = {
        name = "terminfo-hs";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bryan Richter, 2013";
      maintainer = "bryan.richter@gmail.com";
      author = "Bryan Richter";
      homepage = "";
      url = "";
      synopsis = "A pure-Haskell (no FFI) module for accessing terminfo databases";
      description = "This module can acquire terminfo databases and query\nthem for terminal capabilities. For details of\nterminfo, consult the man pages for term(5) and\nterminfo(5).\nThis package is dead simple, and doesn't do anything\nfancy with the capabilities themselves. It merely\nprovides a means for accessing them.";
      buildType = "Simple";
    };
    components = {
      "terminfo-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "System.Terminfo.Internal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }