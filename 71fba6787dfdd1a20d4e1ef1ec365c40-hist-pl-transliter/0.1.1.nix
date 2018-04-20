{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hist-pl-transliter";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/hist-pl/tree/master/transliter";
        url = "";
        synopsis = "A simple EDSL for transliteration rules";
        description = "The library provides a simple embedded domain specific language for\ndefining transliteration rules.\nAdditionally, the library includes a set of rules prepared (within the SYNAT\nproject) for documents collected throughout the IMPACT project (available\nat <http://dl.psnc.pl/activities/projekty/impact/results/>).\n\nA transliteration system, developed independently within the IMPACT\nproject, may be also of interest.\nIt can be found at <https://bitbucket.org/jsbien/pol>.";
        buildType = "Simple";
      };
      components = {
        hist-pl-transliter = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }