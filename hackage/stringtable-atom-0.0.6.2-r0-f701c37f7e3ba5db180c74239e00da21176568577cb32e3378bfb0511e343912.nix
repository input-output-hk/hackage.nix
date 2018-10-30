{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { sybinbase = false; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "stringtable-atom";
        version = "0.0.6.2";
      };
      license = "BSD-3-Clause";
      copyright = "John Meacham 2008, Audrey Tang 2008";
      maintainer = "audreyt@audreyt.org";
      author = "John Meacham";
      homepage = "";
      url = "";
      synopsis = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
      description = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.sybinbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.syb)
          ];
      };
    };
  }