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
      specVersion = "1.2";
      identifier = {
        name = "kangaroo";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Random access binary combinator parser.";
      description = "Binary parsing with random access. The target file to be\nparsed is loaded into memory at the start (represented as\nan IOUArray Int Word8). Parsing proceeds by moving a cursor\naround, the array is left intact. This allows _jumping_\ninside the file and contrasts with other parser\ncombinators that progress via consuming input.\n\n\\* Caveat \\* - the above of course means that the target file\nis obliged to be small enough to fit into memory.\n\n\\*\\* MAJOR CAVEAT \\*\\* - kangaroo is somewhat half-baked at the\nmoment - the parsing machinery seems good but the combinators\nand primitive parsers need more work. I\\'ve only released it on\nHackage because I'm now using it with Hurdle which was already\non Hackage.\n\nChangelog:\n\n0.1.0 First version";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }