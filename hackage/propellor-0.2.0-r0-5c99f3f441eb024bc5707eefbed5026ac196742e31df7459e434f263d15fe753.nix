{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "propellor";
        version = "0.2.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2014 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://joeyh.name/code/propellor/";
      url = "";
      synopsis = "property-based host configuration management in haskell";
      description = "Propellor enures that the system it's run in satisfies a list of\nproperties, taking action as necessary when a property is not yet met.\n\nWhile Propellor can be installed from hackage, to customize and use it\nyou should fork its git repository and modify it from there:\ngit clone git://git.kitenet.net/propellor";
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
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
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
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }