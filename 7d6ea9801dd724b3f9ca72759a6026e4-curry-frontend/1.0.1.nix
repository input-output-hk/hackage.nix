{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "curry-frontend";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fte@informatik.uni-kiel.de";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel,\nBjoern Peemoeller, Finn Teegen";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Compile the functional logic language Curry to several\nintermediate formats";
      description = "The Curry front end consists of the executable program\n\"curry-frontend\".\nIt is used by various backends to compile Curry programs to\nan intermediate representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/curry/>)\nwhich has been extended to produce different intermediate\nrepresentations.\nFor further information, please check\n<http://curry-language.org>";
      buildType = "Simple";
    };
    components = {
      "curry-frontend" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.curry-base)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.set-extra)
          (hsPkgs.transformers)
        ] ++ (if _flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
      };
      exes = {
        "curry-frontend" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.curry-base)
            (hsPkgs.curry-frontend)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.set-extra)
            (hsPkgs.transformers)
          ] ++ (if _flags.network-uri
            then [ (hsPkgs.network-uri) ]
            else [ (hsPkgs.network) ]);
        };
      };
      tests = {
        "test-frontend" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.curry-base)
            (hsPkgs.curry-frontend)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }