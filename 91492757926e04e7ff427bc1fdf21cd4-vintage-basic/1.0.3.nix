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
      specVersion = "1.10";
      identifier = {
        name = "vintage-basic";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lyle@vintage-basic.net";
      author = "Lyle Kopnicky";
      homepage = "http://www.vintage-basic.net";
      url = "";
      synopsis = "Interpreter for microcomputer-era BASIC";
      description = "An interpreter for what is essentially Microsoft BASIC v2,\nwhat you might find on a computer in the late 70s or early\n80s, such as the Commodore 64.\n\nRather than making use of traditional stack-based primitives,\nthe implementation uses monad transformers, including one\nwith resumable exceptions that can caught by a program's\ncontinuation rather than its context.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "vintbas" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.regex-base)
            (hsPkgs.regex-posix)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "test-vintbas" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }