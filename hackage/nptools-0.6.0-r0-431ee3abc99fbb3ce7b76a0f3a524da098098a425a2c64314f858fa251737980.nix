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
      specVersion = "1.4";
      identifier = {
        name = "nptools";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of random tools";
      description = "A collection of random tools";
      buildType = "Simple";
    };
    components = {
      exes = {
        "archive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.HSH)
          ];
        };
        "events-to-timelog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
        "extract-non-ascii" = {
          depends = [ (hsPkgs.base) ];
        };
        "git-prompt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.HSH)
          ];
        };
        "label" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HSH)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.bytestring)
          ];
        };
        "mh-gen-message-id-mapping" = {
          depends = [ (hsPkgs.base) ];
        };
        "drop-non-ascii" = {
          depends = [ (hsPkgs.base) ];
        };
        "show-non-ascii" = {
          depends = [ (hsPkgs.base) ];
        };
        "summ" = {
          depends = [ (hsPkgs.base) ];
        };
        "mean" = {
          depends = [ (hsPkgs.base) ];
        };
        "rot" = {
          depends = [ (hsPkgs.base) ];
        };
        "pad" = {
          depends = [ (hsPkgs.base) ];
        };
        "myrev" = {
          depends = [ (hsPkgs.base) ];
        };
        "loopback" = {
          depends = [ (hsPkgs.base) ];
        };
        "what-I-have-done-today" = {
          depends = [ (hsPkgs.base) ];
        };
        "x-printable" = {
          depends = [ (hsPkgs.base) ];
        };
        "cp-rescue" = {};
        "timer" = {
          depends = [ (hsPkgs.unix) ];
        };
        "nest" = {};
        "getpin" = {};
        "starecho" = {};
        "color-list" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.colour)
            (hsPkgs.array)
          ];
        };
        "lmaptool" = {
          depends = [
            (hsPkgs.containers)
          ];
        };
      };
    };
  }