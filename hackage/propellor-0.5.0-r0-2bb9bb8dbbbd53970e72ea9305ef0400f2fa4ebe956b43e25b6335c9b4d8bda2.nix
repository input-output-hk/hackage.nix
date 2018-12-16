{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "propellor";
        version = "0.5.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2014 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "https://propellor.branchable.com/";
      url = "";
      synopsis = "property-based host configuration management in haskell";
      description = "Propellor enures that the system it's run in satisfies a list of\nproperties, taking action as necessary when a property is not yet met.\n\nIt is configured using haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.MonadCatchIO-transformers)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "propellor" = {
          depends = [
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
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.MonadCatchIO-transformers)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
        "config" = {
          depends = [
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
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.MonadCatchIO-transformers)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }