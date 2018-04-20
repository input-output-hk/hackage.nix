{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use-system-library = false;
      pkg-config = true;
      non-optimised-c = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "argon2";
          version = "1.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
        author = "Ollie Charles, Herbert Valerio Riedel";
        homepage = "";
        url = "";
        synopsis = "Memory-hard password hash and proof-of-work function";
        description = "Argon2 is the key derivation function (KDF) selected as the winner of the [Password Hashing Competition](https://en.wikipedia.org/wiki/Password_Hashing_Competition). The API exposed by this bindings provide access to the 3 specified variants\n\n* @Argon2d@ (maximize resistance to GPU cracking attacks),\n* @Argon2i@ (optimized to resist side-channel attacks), and\n* @Argon2id@ (hybrid version combining @Argon2d@ and @Argon2i@)\n\nand allows to control various parameters (time cost, memory cost, parallelism) of the Argon2 function. Moreover, it is also supported to generate and verify the deprecated version 1.0 hashes, as well as the current version 1.3 hashes.\n\nThe Haskell API supports both raw binary hashes as well as the ASCII-based [PHC string format](https://github.com/P-H-C/phc-string-format/blob/master/phc-sf-spec.md).\n\nThis version provides bindings to the \\\"@20171227@\\\" release of the [Argon2 reference implementation (libargon2)](https://github.com/P-H-C/phc-winner-argon2) of the Argon2 password-hashing function.\n\nPlease refer to the [Argon2 specification](https://github.com/P-H-C/phc-winner-argon2/blob/master/argon2-specs.pdf) for more information.";
        buildType = "Simple";
      };
      components = {
        argon2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.text-short
          ];
          libs = pkgs.lib.optional (_flags.use-system-library && !_flags.pkg-config) pkgs.argon2;
          pkgconfig = pkgs.lib.optional (_flags.use-system-library && _flags.pkg-config) pkgconfPkgs.libargon2;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.argon2
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty
            ];
          };
        };
      };
    }