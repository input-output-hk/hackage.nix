{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kangaroo";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Binary parsing with random access.";
        description = "Binary parsing with random access. The target file to be\nparsed is loaded into memory at the start (represented as\nan IOUArray Int Word8). Parsing proceeds by moving a cursor\naround, the array is left intact. This allows _jumping_\ninside the file and contrasts with other parser\ncombinators that progress via consuming input.\n\n\\* Caveat \\* - the above of course means that the target file\nis obliged to be small enough to fit into memory.\n\n\\*\\* MAJOR CAVEAT \\*\\* - kangaroo is somewhat half-baked (maybe\nnow two thirds baked). The parsing machinery seems good but the\ncombinators need more work. It\\'s on Hackage because I'm using\nit with Hurdle which was already on Hackage and the techinique\nof moving a cursor rather than consuming input seems at least\ninteresting.\n\nCurrently kangaroo is twinned with its own library of formatting\ncombinators (JoinPrint), at some point this is may go in its a\nseparate package.\n\nChangelog:\n\n0.4.0 Changed JoinPrint to have distinct types for single-line\ndocuments (Doc) and multi-line documents (VDoc). This is\nbecause single-line docs track their horizontal length.\n\nAdded a 'skip' primitive to the Parse Monad. Added 'local' and\n'asks' to the Reader top-level modules.\n\n0.3.0 Documented the primitive parsers. @char@ renamed @anyChar@\nto match Parsec\\'s convention. Rationalized exports from\nParseMonad module.\n\n0.2.0 Changes to ParseMonad - parsing within a region simplified,\ntemporarily added JoinPrint.\n\n0.1.0 First version.\n";
        buildType = "Simple";
      };
      components = {
        kangaroo = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }