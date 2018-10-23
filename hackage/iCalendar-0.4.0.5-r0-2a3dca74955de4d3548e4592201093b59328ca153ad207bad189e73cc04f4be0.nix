{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "iCalendar";
        version = "0.4.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Tingtun";
      maintainer = "cra@cra.no";
      author = "Christian Rødli Amble";
      homepage = "http://github.com/chrra/iCalendar";
      url = "";
      synopsis = "iCalendar data types, parser, and printer.";
      description = "Data definitions, parsing and printing of the iCalendar\nformat (RFC5545).";
      buildType = "Simple";
    };
    components = {
      "iCalendar" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.data-default)
          (hsPkgs.case-insensitive)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.mime)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.base64-bytestring)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
    };
  }