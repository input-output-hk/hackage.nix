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
      specVersion = "1.6";
      identifier = {
        name = "diagrams-cairo";
        version = "0.5.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Cairo backend for diagrams drawing EDSL";
      description = "A full-featured backend for rendering\ndiagrams using the cairo rendering engine.\nTo get started, see \"Diagrams.Backend.Cairo.CmdLine\".";
      buildType = "Simple";
    };
    components = {
      "diagrams-cairo" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.cairo)
          (hsPkgs.cmdargs)
          (hsPkgs.gtk)
          (hsPkgs.split)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "7.2.1" && compiler.version.lt "7.4")) [
          (hsPkgs.cairo)
          (hsPkgs.gtk)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.4.1") [
          (hsPkgs.cairo)
          (hsPkgs.gtk)
        ];
      };
    };
  }