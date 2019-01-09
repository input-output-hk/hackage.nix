{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "stack2cabal"; version = "1.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack projects to cabal.project + cabal.project.freeze";
      description = "Convert stack.yaml / package.yaml to cabal.project / cabal.project.freeze / *.cabal.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stack2cabal" = {
          depends = [
            (hsPkgs.stackage-to-hackage)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.text)
            ];
          };
        };
      };
    }