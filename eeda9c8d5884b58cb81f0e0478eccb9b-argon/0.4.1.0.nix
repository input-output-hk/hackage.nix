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
      specVersion = "1.18";
      identifier = {
        name = "argon";
        version = "0.4.1.0";
      };
      license = "ISC";
      copyright = "2015 Michele Lacchia";
      maintainer = "michelelacchia@gmail.com";
      author = "Michele Lacchia";
      homepage = "http://github.com/rubik/argon";
      url = "";
      synopsis = "Measure your code's complexity";
      description = "Argon performs static analysis on your code in order to compute cyclomatic\ncomplexity. It is a quantitative measure of the number of linearly\nindipendent paths through the code.\n\nThe intended usage is through Argon's executable, which accepts a list of\nfiles or directories to analyze. The data can be optionally exported to\nJSON.";
      buildType = "Simple";
    };
    components = {
      "argon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-files)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.lens-simple)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.syb)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "argon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.argon)
            (hsPkgs.docopt)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
          ];
        };
      };
      tests = {
        "argon-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.argon)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ghc)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
          ];
        };
        "style" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }