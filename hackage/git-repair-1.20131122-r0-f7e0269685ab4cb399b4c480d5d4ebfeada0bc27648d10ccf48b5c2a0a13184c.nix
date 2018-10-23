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
        name = "git-repair";
        version = "1.20131122";
      };
      license = "LicenseRef-GPL";
      copyright = "2013 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-repair.branchable.com/";
      url = "";
      synopsis = "repairs a damanged git repisitory";
      description = "git-repair can repair various forms of damage to git repositories.\n\nIt is a complement to git fsck, which finds problems, but does not fix\nthem.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "git-repair" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.unix-compat)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.IfElse)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
            (hsPkgs.utf8-string)
            (hsPkgs.async)
            (hsPkgs.optparse-applicative)
            (hsPkgs.SHA)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }