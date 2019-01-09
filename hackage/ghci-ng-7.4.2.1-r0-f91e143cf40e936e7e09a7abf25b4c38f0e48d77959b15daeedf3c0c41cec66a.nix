{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "ghci-ng"; version = "7.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2005 The University of Glasgow";
      maintainer = "hvr@gnu.org";
      author = "The GHC Team";
      homepage = "https://github.com/hvr/ghci-ng";
      url = "";
      synopsis = "Extended GHCi fork";
      description = "This provides an augmented version of @ghci-7.6.3@ installed under\nthe name @ghci-ng@ containing backported, proposed and\nexperimental features.\n\nCurrently, @ghci-ng@ has the following additional features\ncompared to the vanilla @ghci-7.6.3@ program:\n\n* @:complete@ command for non-interactive completion\n(proposed for GHC 7.8.1, <http://ghc.haskell.org/trac/ghc/ticket/5687>)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-ng" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.transformers)
            ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        };
      };
    }