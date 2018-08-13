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
      specVersion = "1.6";
      identifier = {
        name = "ShellCheck";
        version = "0.3.1";
      };
      license = "LicenseRef-OtherLicense";
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
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.json)
        ];
      };
      exes = { "shellcheck" = {}; };
    };
  }