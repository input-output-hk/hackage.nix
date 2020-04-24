{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { int-cast = false; use-system-lzlib = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "lzip"; version = "0.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2019, Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/lzlib";
      url = "";
      synopsis = "Lzip compression / Lzlib bindings";
      description = "Lzip is a data compression format based on <https://en.wikipedia.org/wiki/LZMA LZMA (Lempel–Ziv–Markov chain algorithm)>.\n\nThe <https://www.nongnu.org/lzip/manual/lzlib_manual.html#Data-format Lzip file format> is designed for data sharing and long-term archiving, taking into account both data integrity and decoder availability (see the <https://www.nongnu.org/lzip/lzlib.html Lzlib homepage> for more details).\n\nThis package provides low-level FFI bindings to the Lzlib C library as well as a monadic 'ByteString'-based mid-level API for the 'IO' and 'ST' monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (flags.int-cast) (hsPkgs."int-cast" or ((hsPkgs.pkgs-errors).buildDepError "int-cast"));
        libs = (pkgs.lib).optional (flags.use-system-lzlib) (pkgs."lz" or ((hsPkgs.pkgs-errors).sysDepError "lz"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }