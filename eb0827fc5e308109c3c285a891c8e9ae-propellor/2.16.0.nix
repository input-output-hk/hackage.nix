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
      specVersion = "1.8";
      identifier = {
        name = "propellor";
        version = "2.16.0";
      };
      license = "BSD-3-Clause";
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
          (hsPkgs.MissingH)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.IfElse)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.hslogger)
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
          (hsPkgs.unix)
        ];
      };
      exes = {
        "propellor" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.IfElse)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
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
            (hsPkgs.unix)
          ];
        };
        "propellor-config" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.IfElse)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
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
            (hsPkgs.unix)
          ];
        };
      };
    };
  }