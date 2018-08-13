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
      specVersion = "1.6";
      identifier = {
        name = "adblock2privoxy";
        version = "1.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Alexey Zubritsky";
      author = "Alexey Zubritsky";
      homepage = "https://projects.zubr.me/wiki/adblock2privoxy";
      url = "";
      synopsis = "Convert adblock config files to privoxy format";
      description = "AdBlock Plus browser plugin has great block list files provided by big community,\nbut it is client software and cannot work on a server as proxy.\n\nPrivoxy proxy has good potential to block ads at server side,\nbut it experiences acute shortage of updated block lists.\n\nThis software converts adblock lists to privoxy config files format.\n\nAlmost all adblock features are supported including\n- block/unblock requests (on privoxy)\nall syntax features are supported except for regex templates matching host name\n- hide/unhide page elements (via CSS)\nall syntax features are supported\n- all block request options except for outdated ones:\nSupported: script, image, stylesheet, object, xmlhttprequest, object-subrequest, subdocument,\ndocument, elemhide, other, popup, third-party, domain=..., match-case, donottrack\nUnsupported: collapse, background, xbl, ping and dtd";
      buildType = "Simple";
    };
    components = {
      exes = {
        "adblock2privoxy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.MissingH)
            (hsPkgs.parsec-permutation)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.strict)
            (hsPkgs.network)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }