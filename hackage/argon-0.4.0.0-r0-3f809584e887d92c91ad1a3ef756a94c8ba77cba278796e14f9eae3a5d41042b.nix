{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "argon";
        version = "0.4.0.0";
      };
      license = "ISC";
      copyright = "2015 Michele Lacchia";
      maintainer = "michelelacchia@gmail.com";
      author = "Michele Lacchia";
      homepage = "http://github.com/rubik/argon";
      url = "";
      synopsis = "Measure your code's complexity";
      description = "Argon performs static analysis on your code in order to compute cyclomatic\ncomplexity. It is a quantitative measure of the number of linearly\nindipendent paths through the code.\n\nThe intended usage is through Argon's executable, which accepts a list of\nfile paths to analyze. The data can be optionally exported to JSON.";
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
          (hsPkgs.lens-simple)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.syb)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.pathwalk)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "argon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.docopt)
            (hsPkgs.pipes)
            (hsPkgs.argon)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.pathwalk);
        };
      };
      tests = {
        "argon-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.pipes)
            (hsPkgs.pipes-group)
            (hsPkgs.lens-simple)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.syb)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.docopt)
            (hsPkgs.pathwalk)
            (hsPkgs.directory)
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