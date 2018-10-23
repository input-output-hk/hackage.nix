{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = {
        name = "propellor";
        version = "4.8.1";
      };
      license = "BSD-2-Clause";
      copyright = "2014 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "https://propellor.branchable.com/";
      url = "";
      synopsis = "property-based host configuration management in haskell";
      description = "Propellor ensures that the system it's run in satisfies a list of\nproperties, taking action as necessary when a property is not yet met.\n\nIt is configured using haskell.";
      buildType = "Simple";
    };
    components = {
      "propellor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.IfElse)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.hslogger)
          (hsPkgs.split)
          (hsPkgs.unix)
          (hsPkgs.unix-compat)
          (hsPkgs.ansi-terminal)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.async)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.hashable)
        ];
      };
      exes = {
        "propellor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.IfElse)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
            (hsPkgs.split)
            (hsPkgs.unix)
            (hsPkgs.unix-compat)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.async)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.hashable)
          ];
        };
        "propellor-config" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.IfElse)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
            (hsPkgs.split)
            (hsPkgs.unix)
            (hsPkgs.unix-compat)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.async)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.hashable)
          ];
        };
      };
    };
  }