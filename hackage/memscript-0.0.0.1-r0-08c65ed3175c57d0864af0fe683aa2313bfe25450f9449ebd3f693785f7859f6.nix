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
        name = "memscript";
        version = "0.0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "http://kyagrd.dyndns.org/wiki/MemScript";
      url = "";
      synopsis = "Command line utility for memorizing scriptures or any other text";
      description = "\"memscript <filename>\"\nRun memscript with a UTF-8 (or ASCII since ASCII is a subset of UTF8) plain\ntext file.  Try to exactly guess the text line by line.  If your guess is\nwrong it will show you a diff like output comparing your guess and the\noriginal verse.  This will repeat until you get all the verses right.\nI included four belvoed Plsams (1,23,121,127) from the Old Testament,\neach in Revised Korean Version (RKV) and New International Version (NIV),\nwhich I happend to have had to memorize.  You can use it for any other\ntext you'd want to memorize, such as your favorite poems, quotes, or\nwhatsoever.\nNo craft or ticks, really simple and straightforward untility but serves\nwell for the purpose.  I used readline because that was the only sane way\nI know of handling multibyte inputs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "memscript" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }