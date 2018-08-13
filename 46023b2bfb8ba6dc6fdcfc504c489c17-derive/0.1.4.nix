{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "derive";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2006-7, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell & Stefan O'Rear";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/derive/";
      url = "";
      synopsis = "A program and library to derive instances for data types";
      description = "Data.Derive is a library and a tool for deriving instances for Haskell programs.\nIt is designed to work with custom derivations, SYB and Template Haskell mechanisms.\nThe tool requires GHC, but the generated code is portable to all compilers.\nWe see this tool as a competitor to DrIFT.";
      buildType = "Simple";
    };
    components = {
      "derive" = {
        depends  = ([
          (hsPkgs.template-haskell)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
          (hsPkgs.base)
          (hsPkgs.syb)
        ]) ++ (if _flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.packedstring)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = { "derive" = {}; };
    };
  }