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
      specVersion = "1.12";
      identifier = {
        name = "aura";
        version = "2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/aurapm/aura";
      url = "";
      synopsis = "A secure package manager for Arch Linux and the AUR, written in Haskell.";
      description = "aura is a package manager for Arch Linux written in Haskell. It connects to both the official Arch repostitories and to the AUR, allowing easy control of all packages on an Arch system. It allows /all/ pacman operations and provides /new/ custom ones for dealing with AUR packages. This differs from some other AUR package managers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.algebraic-graphs)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.aur)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.compactable)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.freer-simple)
          (hsPkgs.generic-lens)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.language-bash)
          (hsPkgs.megaparsec)
          (hsPkgs.microlens)
          (hsPkgs.microlens-ghc)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.network-uri)
          (hsPkgs.non-empty-containers)
          (hsPkgs.paths)
          (hsPkgs.pretty-simple)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.semigroupoids)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.throttled)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.typed-process)
          (hsPkgs.versions)
          (hsPkgs.witherable)
        ];
      };
      exes = {
        "aura" = {
          depends  = [
            (hsPkgs.aura)
            (hsPkgs.base)
            (hsPkgs.base-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.freer-simple)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.language-bash)
            (hsPkgs.microlens)
            (hsPkgs.non-empty-containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.paths)
            (hsPkgs.pretty-simple)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.versions)
          ];
        };
      };
      tests = {
        "aura-test" = {
          depends  = [
            (hsPkgs.aura)
            (hsPkgs.base)
            (hsPkgs.base-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.freer-simple)
            (hsPkgs.http-client)
            (hsPkgs.language-bash)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.non-empty-containers)
            (hsPkgs.paths)
            (hsPkgs.pretty-simple)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.versions)
          ];
        };
      };
    };
  }