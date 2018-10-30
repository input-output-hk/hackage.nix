{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "prof2pretty";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/prof2pretty";
      url = "";
      synopsis = "generate pretty source from time/allocation profiles";
      description = "prof2pretty is an enhanced rewrite of visual-prof that works with\nrecent GHC RTS.  sccpragmabomb adds SCC pragmas encoding source\nlocation.  prof2pretty extracts those SCCs from the profiling output\nto annotate the sources using HTML + CSS + JavaScript.\n\nUsage:\n\n> cd example\n> ghc -prof -F -pgmF=sccpragmabomb test.hs\n> cd ..\n> ./example/test +RTS -P -RTS 31416\n> prof2pretty --standalone --source=example/ test.prof\n> sensible-browser test.prof.html\n\nExample output: <http://mathr.co.uk/prof2pretty/prof2pretty-0.1.0.0.html>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "prof2pretty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.semigroups)
            (hsPkgs.zenc)
          ];
        };
        "sccpragmabomb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
            (hsPkgs.zenc)
          ];
        };
      };
    };
  }