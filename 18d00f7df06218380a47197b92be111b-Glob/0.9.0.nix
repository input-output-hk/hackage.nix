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
      specVersion = "1.9.2";
      identifier = {
        name = "Glob";
        version = "0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+glob@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/glob/";
      url = "";
      synopsis = "Globbing library";
      description = "A library for globbing: matching patterns against file paths.";
      buildType = "Simple";
    };
    components = {
      "Glob" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      tests = {
        "glob-tests" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.filepath)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        };
      };
    };
  }