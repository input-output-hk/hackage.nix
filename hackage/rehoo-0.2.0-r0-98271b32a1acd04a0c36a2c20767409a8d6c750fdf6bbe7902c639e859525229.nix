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
        name = "rehoo";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/rehoo";
      url = "";
      synopsis = "Rebuild default.hoo from many .hoo files in the current directory";
      description = "Rebuild default.hoo from many .hoo files in the current directory";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rehoo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.parallel-io)
            (hsPkgs.shelly)
            (hsPkgs.split)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
          ];
        };
      };
    };
  }