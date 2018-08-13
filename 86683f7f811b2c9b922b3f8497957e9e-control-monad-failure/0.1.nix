{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      transformers = false;
      extensibleexceptionsinbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "control-monad-failure";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/pepeiborra/control-monad-failure";
      url = "";
      synopsis = "A class for monads which can fail with an error.";
      description = "A class for monads which can fail with an error.";
      buildType = "Simple";
    };
    components = {
      "control-monad-failure" = {
        depends  = ([
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
        ] ++ (if _flags.transformers
          then [ (hsPkgs.transformers) ]
          else [
            (hsPkgs.mtl)
          ])) ++ (if _flags.extensibleexceptionsinbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
          ]);
      };
    };
  }