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
      specVersion = "1.20";
      identifier = {
        name = "styx";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A generator of nix files";
      description = "Soon to appear.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "styx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.yaml)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }