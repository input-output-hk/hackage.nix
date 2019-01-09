{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "stackage-to-hackage"; version = "1.1.0"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack.yaml to cabal.project + cabal.project.freeze";
      description = "A small library (and demo app) to convert stack.yaml files to cabal.project /\ncabal.project.freeze for an existing Haskell application that has its build plan\ndefined for the stack build tool.\n\nUsers will want to use the stack2cabal application, integrating hpack support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.HsYAML)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          ];
        };
      exes = {
        "stackage-to-hackage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.stackage-to-hackage)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }