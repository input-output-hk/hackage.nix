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
        name = "update-nix-fetchgit";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Joe Hermaszewski";
      maintainer = "haskell@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "https://github.com/expipiplus1/update-nix-fetchgit#readme";
      url = "";
      synopsis = "A program to update fetchgit values in Nix expressions";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.data-fix)
          (hsPkgs.hnix)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.uniplate)
          (hsPkgs.utf8-string)
          (hsPkgs.errors)
        ];
      };
      exes = {
        "update-nix-fetchgit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.update-nix-fetchgit)
          ];
        };
      };
    };
  }