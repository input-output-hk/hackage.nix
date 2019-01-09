{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "phoityne"; version = "0.0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne_hs";
      homepage = "";
      url = "";
      synopsis = "Deprecated - ghci debug viewer with simple editor.";
      description = "Deprecated - use phoityne-vscode package instead.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phoityne" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.MissingH)
            (hsPkgs.safe)
            (hsPkgs.HStringTemplate)
            (hsPkgs.gtk3)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.Cabal)
            ];
          };
        };
      tests = {
        "phoityne-test" = { depends = [ (hsPkgs.base) (hsPkgs.hspec) ]; };
        };
      };
    }