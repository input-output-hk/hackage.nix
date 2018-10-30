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
      specVersion = "1.6";
      identifier = {
        name = "bumper";
        version = "0.6.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "http://github.com/silkapp/bumper";
      url = "";
      synopsis = "Automatically bump package versions, also transitively.";
      description = "Automatically bump package versions, also transitively.\n\nReadme: <https://www.github.com/silkapp/bumper/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bumper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.fclabels)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.split)
            (hsPkgs.strict)
          ];
        };
      };
    };
  }