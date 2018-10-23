{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { mtl = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "control-monad-failure";
        version = "0.3";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (flags.mtl) (hsPkgs.mtl);
      };
    };
  }