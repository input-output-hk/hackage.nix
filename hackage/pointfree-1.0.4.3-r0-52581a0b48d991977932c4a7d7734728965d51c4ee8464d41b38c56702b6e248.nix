{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pointfree"; version = "1.0.4.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
      author = "Thomas Jäger";
      homepage = "";
      url = "";
      synopsis = "Tool for refactoring expressions into pointfree form";
      description = "The pointfree tool is a standalone command-line version of the pl\nplugin for lambdabot.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pointfree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }