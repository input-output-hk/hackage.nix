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
      specVersion = "1.6";
      identifier = {
        name = "bidirectionalization-combined";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "kztk@kb.ecei.tohoku.ac.jp";
      author = "Kazutaka Matsuda, Joachim Breitner";
      homepage = "http://www.kb.ecei.tohoku.ac.jp/~kztk/b18n-combined/desc.html";
      url = "";
      synopsis = "Prototype Implementation of Combining Syntatic and Semantic Bidirectionalization (ICFP'10)";
      description = "This is a prototype implementation of the idea presented\nin Combining Syntatic and Semantic Bidirectionalization\nby Janis Voigtlaender, Zhenjiang Hu, Kazutaka Matsuda\nand Meng Wang.\n\nThis package builds two executables to experiment with the system,\na command line program \"b18-combined\" and a CGI based web interface\n\"b18n-combined-cgi\". The latter is also available on\nhttp://www.kb.ecei.tohoku.ac.jp/~kztk/b18n-combined/";
      buildType = "Simple";
    };
    components = {
      exes = {
        "b18n-combined" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.parsec)
          ];
        };
        "b18n-combined-cgi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.directory)
            (hsPkgs.parsec)
            (hsPkgs.xhtml)
            (hsPkgs.cgi)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.hint)
          ];
        };
      };
    };
  }