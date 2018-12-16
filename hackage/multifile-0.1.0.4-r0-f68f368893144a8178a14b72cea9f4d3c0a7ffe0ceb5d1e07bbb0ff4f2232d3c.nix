{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "multifile";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "xy30.com";
      url = "";
      synopsis = "create many files from one";
      description = "saves the contents of files from a spefically defined xml document";
      buildType = "Simple";
    };
    components = {
      exes = {
        "multifile" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }