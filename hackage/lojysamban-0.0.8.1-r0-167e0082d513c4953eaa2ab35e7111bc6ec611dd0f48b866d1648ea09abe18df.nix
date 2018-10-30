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
        name = "lojysamban";
        version = "0.0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/myblog/lojysamban.html";
      url = "";
      synopsis = "Prolog with lojban";
      description = "Prolog with lojban\n\n> lojysamban\n> .i la .iocikun. patfu la .ituk.\n> .i la manam. mamta la .ituk.\n> .i da rirni de .ijanai da patfu de\n> .i da rirni de .ijanai da mamta de\n> fa'o\n> .i ma rirni la .ituk.\n> .i la iocikun .a la manam\n> .i co'o\n>\n> lojysamban example/pendo.jbo\n> .i ma pendo la .ualeis.\n> .i la gromit\n> .i co'o\n>\n> lojysamban example/skari.jbo\n> .i alabam. bu toldu'o misisip. bu boi joji'as. bu boi tenesis. bu boi florid. bu\n> .i tu'e alabam bu du lo kambla .ije joji'as. bu du lo kamxu'e .ije misisip bu\n> du lo kamxu'e .ije tenesis bu du lo kamri'o .ije florid bu du lo kamri'o tu'u\n> .ija tu'e alabam bu du lo kamri'o .ife joji'as bu du lo kamxu'e ...\n> .i co'o\n>\n> lojysamban example/patfu.jbo\n> .i ma dzena la jon.bois.jr.\n> .i la jon.bois.sr .a la zeb\n> .i co'o\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lojysamban" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lojbanParser)
            (hsPkgs.yjtools)
          ];
        };
      };
    };
  }