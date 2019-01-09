{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "stackage-to-hackage"; version = "1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack.yaml to cabal.project + cabal.project.freeze";
      description = "This is a small tool to create a cabal.project and cabal.project.freeze file\nfor an existing Haskell application that has its build plan defined for\nthe stack build tool.\nThe user can use the following script to invoke this binary and hpack:\n[stack2cabal](https://gitlab.com/tseenshe/stackage-to-hackage/blob/master/stack2cabal).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stackage-to-hackage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.HsYAML)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.bytestring)
            (hsPkgs.http-streams)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.network-uri)
            (hsPkgs.semigroupoids)
            (hsPkgs.text)
            ];
          };
        };
      };
    }