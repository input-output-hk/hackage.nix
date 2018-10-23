{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "visual-prof";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djvelkov@gmail.com";
      author = "Daniel Velkov";
      homepage = "http://github.com/djv/VisualProf";
      url = "";
      synopsis = "Create a visual profile of a program's source code";
      description = "visual-prof profiles your Haskell program and generates a html file containing\nits source code with parts of the code highlighted in different\ncolors depending on the fraction of the running time that they take.\nvisual-prof gives you an easy way to find places for optimization in your code.\n\nUsage:\n\n> visual-prof -px A/B/C.hs run \"arg1 arg2\"\n\nThis will profile the C.hs file used by run.hs which contains the Main module\nof your project. Arguments to ./run are passed as shown (arg1, arg2,...). The parameters\nshould be given in that order.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "visual-prof" = {
          depends  = [
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.regexpr)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
            (hsPkgs.uniplate)
          ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }