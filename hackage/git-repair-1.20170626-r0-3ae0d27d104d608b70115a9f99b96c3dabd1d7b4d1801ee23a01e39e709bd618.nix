{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "git-repair";
        version = "1.20170626";
      };
      license = "LicenseRef-GPL";
      copyright = "2013 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-repair.branchable.com/";
      url = "";
      synopsis = "repairs a damanged git repisitory";
      description = "git-repair can repair various forms of damage to git repositories.\n\nIt is a complement to git fsck, which finds problems, but does not fix\nthem.\n\nAs well as avoiding the need to rm -rf a damaged repository and re-clone,\nusing git-repair can help rescue commits you've made to the damaged\nrepository and not yet pushed out.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "git-repair" = {
          depends  = ([
            (hsPkgs.split)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.unix-compat)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
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
            (hsPkgs.data-default)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [
              (hsPkgs.network)
              (hsPkgs.network)
            ])) ++ (if system.isWindows
            then [ (hsPkgs.setenv) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }