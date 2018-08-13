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
      specVersion = "1.8";
      identifier = {
        name = "cabal2nix";
        version = "1.14";
      };
      license = "BSD-3-Clause";
      copyright = "Peter Simons, Andres Loeh";
      maintainer = "Nix Developers <nix-dev@cs.uu.nl>";
      author = "Peter Simons <simons@cryp.to>, Andres Loeh <mail@andres-loeh.de>";
      homepage = "http://github.com/haskell4nix/cabal2nix";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions";
      description = "The @cabal2nix@ utility converts Cabal files into Nix build instructions. The\ncommandline syntax is:\n\n> Usage: cabal2nix [options] url-to-cabal-file\n>   -h             --help                   show this help text\n>                  --sha256=HASH            sha256 hash of source tarball\n>   -m MAINTAINER  --maintainer=MAINTAINER  maintainer of this package (may be specified multiple times)\n>   -p PLATFORM    --platform=PLATFORM      supported build platforms (may be specified multiple times)\n>\n> Recognized URI schemes:\n>\n>   cabal://pkgname-pkgversion       download the specified package from Hackage\n>   http://host/path                 fetch the Cabel file via HTTP\n>   file:///local/path               load the Cabal file from the local disk\n>   /local/path                      abbreviated version of file URI\n\nThe only required argument is the path to the cabal file. For example:\n\n> cabal2nix http://hackage.haskell.org/packages/archive/cabal2nix/1.13/cabal2nix.cabal\n> cabal2nix cabal://cabal2nix-1.13\n\nIf the @--sha256@ option has not been specified, cabal2nix calls\n@nix-prefetch-url@ to determine the hash automatically. This causes\nnetwork traffic, obviously.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.pretty)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.HTTP)
            (hsPkgs.nixos-types)
          ];
        };
        "hackage4nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.pretty)
            (hsPkgs.Cabal)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.nixos-types)
            (hsPkgs.hackage-db)
          ];
        };
      };
    };
  }