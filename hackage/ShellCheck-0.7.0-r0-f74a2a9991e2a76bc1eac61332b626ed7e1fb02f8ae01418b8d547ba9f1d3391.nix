{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ShellCheck"; version = "0.7.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "vidar@vidarholen.net";
      author = "Vidar Holen";
      homepage = "https://www.shellcheck.net/";
      url = "";
      synopsis = "Shell script analysis tool";
      description = "The goals of ShellCheck are:\n\n* To point out and clarify typical beginner's syntax issues,\nthat causes a shell to give cryptic error messages.\n\n* To point out and clarify typical intermediate level semantic problems,\nthat causes a shell to behave strangely and counter-intuitively.\n\n* To point out subtle caveats, corner cases and pitfalls, that may cause an\nadvanced user's otherwise working script to fail under future circumstances.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.regex-tdfa)
          (hsPkgs.QuickCheck)
          (hsPkgs.process)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
        };
      exes = {
        "shellcheck" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.regex-tdfa)
            (hsPkgs.ShellCheck)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      tests = {
        "test-shellcheck" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.regex-tdfa)
            (hsPkgs.ShellCheck)
            ];
          };
        };
      };
    }