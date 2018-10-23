{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ShellCheck";
        version = "0.3.5";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "vidar@vidarholen.net";
      author = "Vidar Holen";
      homepage = "http://www.shellcheck.net/";
      url = "";
      synopsis = "Shell script analysis tool";
      description = "The goals of ShellCheck are:\n\n* To point out and clarify typical beginner's syntax issues,\nthat causes a shell to give cryptic error messages.\n\n* To point out and clarify typical intermediate level semantic problems,\nthat causes a shell to behave strangely and counter-intuitively.\n\n* To point out subtle caveats, corner cases and pitfalls, that may cause an\nadvanced user's otherwise working script to fail under future circumstances.";
      buildType = "Simple";
    };
    components = {
      "ShellCheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.json)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.regex-compat)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "shellcheck" = {
          depends  = [
            (hsPkgs.ShellCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      tests = {
        "test-shellcheck" = {
          depends  = [
            (hsPkgs.ShellCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }