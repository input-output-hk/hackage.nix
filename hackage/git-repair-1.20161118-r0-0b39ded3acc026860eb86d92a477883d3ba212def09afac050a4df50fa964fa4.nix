{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-repair"; version = "1.20161118"; };
      license = "LicenseRef-GPL";
      copyright = "2013 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-repair.branchable.com/";
      url = "";
      synopsis = "repairs a damanged git repisitory";
      description = "git-repair can repair various forms of damage to git repositories.\n\nIt is a complement to git fsck, which finds problems, but does not fix\nthem.\n\nAs well as avoiding the need to rm -rf a damaged repository and re-clone,\nusing git-repair can help rescue commits you've made to the damaged\nrepository and not yet pushed out.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger))
        (hsPkgs.buildPackages.MissingH or (pkgs.buildPackages.MissingH))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse))
        (hsPkgs.buildPackages.data-default or (pkgs.buildPackages.data-default))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      exes = {
        "git-repair" = {
          depends = ([
            (hsPkgs.MissingH)
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
            ] ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) (hsPkgs.network) ]
            else [ (hsPkgs.network) (hsPkgs.network) ])) ++ (if system.isWindows
            then [ (hsPkgs.setenv) ]
            else [ (hsPkgs.unix) ]);
          };
        };
      };
    }