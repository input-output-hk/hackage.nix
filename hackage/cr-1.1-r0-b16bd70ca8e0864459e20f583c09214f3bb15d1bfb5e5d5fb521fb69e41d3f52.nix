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
      specVersion = "1.8";
      identifier = {
        name = "cr";
        version = "1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "scvalex@gmail.com";
      author = "Alexandru Scvortov <scvalex@gmail.com>";
      homepage = "https://github.com/scvalex/cr";
      url = "";
      synopsis = "Code review tool";
      description = "See the @README.md@ file and the homepage for details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }