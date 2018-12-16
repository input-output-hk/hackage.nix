{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      broken-directory = false;
      old-time = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "curry-base";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fte@informatik.uni-kiel.de";
      author = "Wolfgang Lux, Martin Engelke, Bernd Braßel, Holger Siegel,\nBjörn Peemöller, Finn Teegen";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Functions for manipulating Curry programs";
      description = "This package serves as a foundation for Curry compilers.\nIt defines the intermediate language formats FlatCurry.\nAdditionally, it provides functionality for the smooth\nintegration of compiler frontends and backends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.extra)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.4") [
          (hsPkgs.either)
          (hsPkgs.contravariant)
          (hsPkgs.semigroupoids)
        ]) ++ (if flags.broken-directory
          then [
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.base)
          ]
          else if flags.old-time
            then [
              (hsPkgs.old-time)
              (hsPkgs.directory)
            ]
            else [
              (hsPkgs.time)
              (hsPkgs.directory)
            ]);
      };
      tests = {
        "test-base" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.curry-base)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }