{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      transformers = false;
      extensibleexceptionsinbase = true;
    };
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
      "library" = {
        depends = ([
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
        ] ++ (if flags.transformers
          then [ (hsPkgs.transformers) ]
          else [
            (hsPkgs.mtl)
          ])) ++ (if flags.extensibleexceptionsinbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
          ]);
      };
    };
  }